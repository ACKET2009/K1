#!/bin/sh

# === Цвета ===
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

# === Функции вывода ===
echo_red() { printf "$RED%s$RESET\n" "$1"; }
echo_green() { printf "$GREEN%s$RESET\n" "$1"; }
echo_yellow() { printf "$YELLOW%s$RESET\n" "$1"; }

# === Пауза ===
pause() {
  printf "\nНажмите Enter для продолжения..."
  if [ -e /dev/tty ]; then
    IFS= read dummy < /dev/tty 2>/dev/null || true
  else
    IFS= read dummy || true
  fi
}

# === Шапка ===
print_header() {
    printf "$GREEN"
    printf "=======================================================\n"
    printf " /\\_/\\   K1 / K1C / K1 Max Mods\n"
    printf "( o.o )  (by Tom Tomich)\n"
    printf " > ^ <   Автоматическое обновление и откат алгоритм shaper\n"
    printf "=======================================================\n"
    printf "$RESET\n"
}

# === Проверка sweeping_period ===
get_sweeping_status() {
    if grep -q "sweeping_period:" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        grep "sweeping_period:" /usr/data/printer_data/config/printer.cfg | awk '{print $2}'
    else
        echo "none"
    fi
}

# === Флаг перезагрузки ===
NEED_REBOOT=0

# === Функции обновления/отката ===
update_k1s_k1max() {
    echo_yellow "=== Установка обновления для K1 / K1C / K1 Max ==="
    cd /usr/share/klipper/klippy/ || return 1
    mv toolhead.py toolhead.py.bak 2>/dev/null
    rm -f toolhead.pyc
    wget --no-check-certificate -q -P /usr/share/klipper/klippy/ https://raw.githubusercontent.com/Konstant-3d/K1C-mods/refs/heads/main/usr/share/klipper/klippy/toolhead.py
    chmod 644 toolhead.py
    cd /usr/share/klipper/klippy/extras/ || return 1
    mv resonance_tester.py resonance_tester.py.bak 2>/dev/null
    mv shaper_calibrate.py shaper_calibrate.py.bak 2>/dev/null
    rm -f resonance_tester.pyc shaper_calibrate.pyc
    wget --no-check-certificate -q -P /usr/share/klipper/klippy/extras/ https://raw.githubusercontent.com/Konstant-3d/K1C-mods/refs/heads/main/usr/share/klipper/klippy/extras/resonance_tester.py
    wget --no-check-certificate -q -P /usr/share/klipper/klippy/extras/ https://raw.githubusercontent.com/Konstant-3d/K1C-mods/refs/heads/main/usr/share/klipper/klippy/extras/shaper_calibrate.py
    chmod 644 resonance_tester.py shaper_calibrate.py
    sed -i 's/accel_per_hz: 75/accel_per_hz: 60/' /usr/data/printer_data/config/printer.cfg

    if grep -q "sweeping_period:" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        sed -i 's/sweeping_period:.*/sweeping_period: 1.2/' /usr/data/printer_data/config/printer.cfg
    elif grep -q "^\[resonance_tester\]" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        sed -i '/resonance_tester/{
n
n
n
n
n
n
a\
sweeping_period: 1.2
}' /usr/data/printer_data/config/printer.cfg
    else
        echo_red "✘ Секция [resonance_tester] не найдена. sweeping_period не добавлен."
    fi

    echo_green "✔ Установка завершена."
    NEED_REBOOT=1
}

update_k1se() {
    echo_yellow "=== Установка обновления для K1SE (1.3.5.11) ==="
    cd /usr/share/klipper/klippy/ || return 1
    mv toolhead.py toolhead.py.bak1 2>/dev/null
    wget --no-check-certificate -q -P /usr/share/klipper/klippy/ https://raw.githubusercontent.com/Konstant-3d/K1C-mods/refs/heads/main/usr/share/klipper/klippy/toolhead_1_3_5_11.py
    mv toolhead_1_3_5_11.py toolhead.py
    chmod 644 toolhead.py
    echo_green "✔ Установка завершена."
    NEED_REBOOT=1
}

rollback() {
    echo_yellow "=== Откат алгоритма Sweeping Period ==="
    if grep -q "sweeping_period:" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        current=$(grep "sweeping_period:" /usr/data/printer_data/config/printer.cfg | awk '{print $2}')
        if [ "$current" = "1.2" ]; then
            sed -i 's/sweeping_period: 1.2/sweeping_period: 0/' /usr/data/printer_data/config/printer.cfg
            echo_green "✔ Алгоритм откатан: sweeping_period = 0 (старый алгоритм)"
        elif [ "$current" = "0" ]; then
            echo_green "✔ Алгоритм уже в исходном состоянии (старый = 0)"
        else
            echo_red "✘ Некорректное значение sweeping_period: $current"
        fi
        NEED_REBOOT=1
    else
        echo_red "✘ Параметр sweeping_period не найден. Откат невозможен."
    fi
}

toggle_algorithm() {
    if grep -q "sweeping_period:" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        current=$(grep "sweeping_period:" /usr/data/printer_data/config/printer.cfg | awk '{print $2}')
        if [ "$current" = "0" ]; then
            sed -i 's/sweeping_period: 0/sweeping_period: 1.2/' /usr/data/printer_data/config/printer.cfg
            echo_green "✔ Алгоритм переключён: теперь sweeping_period = 1.2 (новый алгоритм)"
        else
            sed -i 's/sweeping_period: 1.2/sweeping_period: 0/' /usr/data/printer_data/config/printer.cfg
            echo_green "✔ Алгоритм переключён: теперь sweeping_period = 0 (старый алгоритм)"
        fi
        NEED_REBOOT=1
    else
        echo_red "✘ Параметр sweeping_period не найден. Переключение невозможно."
    fi
}

full_rollback() {
    echo_yellow "=== ПОЛНЫЙ ОТКАТ К ИСХОДНОМУ СОСТОЯНИЮ ==="
    echo_red "⚠️ ВНИМАНИЕ! Это вернет все файлы к исходному состоянию."
    printf "Вы уверены? (y/n): "
    read confirm
    
    if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
        echo_yellow "Откат отменён."
        return
    fi
    
    cd /usr/share/klipper/klippy/ || return 1
    
    # Восстановление toolhead.py
    if [ -f "toolhead.py.bak" ]; then
        mv toolhead.py.bak toolhead.py
        echo_green "✔ toolhead.py восстановлен из бекапа"
    elif [ -f "toolhead.py.bak1" ]; then
        mv toolhead.py.bak1 toolhead.py
        echo_green "✔ toolhead.py восстановлен из бекапа (K1SE)"
    else
        echo_yellow "⚠ toolhead.py.bak не найден, пропускаем"
    fi
    
    rm -f toolhead.pyc
    
    cd /usr/share/klipper/klippy/extras/ || return 1
    
    # Восстановление resonance_tester.py
    if [ -f "resonance_tester.py.bak" ]; then
        mv resonance_tester.py.bak resonance_tester.py
        echo_green "✔ resonance_tester.py восстановлен из бекапа"
    else
        echo_yellow "⚠ resonance_tester.py.bak не найден, пропускаем"
    fi
    
    # Восстановление shaper_calibrate.py
    if [ -f "shaper_calibrate.py.bak" ]; then
        mv shaper_calibrate.py.bak shaper_calibrate.py
        echo_green "✔ shaper_calibrate.py восстановлен из бекапа"
    else
        echo_yellow "⚠ shaper_calibrate.py.bak не найден, пропускаем"
    fi
    
    rm -f resonance_tester.pyc shaper_calibrate.pyc
    
    # Откат изменений в printer.cfg
    echo_yellow "=== Откат изменений в printer.cfg ==="
    
    # Удаление sweeping_period
    if grep -q "sweeping_period:" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        sed -i '/sweeping_period:/d' /usr/data/printer_data/config/printer.cfg
        echo_green "✔ sweeping_period удален из конфига"
    fi
    
    # Возврат accel_per_hz обратно на 75
    if grep -q "accel_per_hz: 60" /usr/data/printer_data/config/printer.cfg 2>/dev/null; then
        sed -i 's/accel_per_hz: 60/accel_per_hz: 75/' /usr/data/printer_data/config/printer.cfg
        echo_green "✔ accel_per_hz возвращен на 75 (исходное значение)"
    fi
    
    echo_green "✔✔✔ ПОЛНЫЙ ОТКАТ ЗАВЕРШЕН ✔✔✔"
    echo_yellow "Все файлы восстановлены из бекапов, изменения в конфиге откачены."
    NEED_REBOOT=1
}

# === Меню ===
while true; do
    clear
    print_header

    current=$(get_sweeping_status)

    printf "\n$GREENВыберите действие:$RESET\n"
    printf "  1) Установить обновление (K1 / K1C / K1 Max)\n"
    printf "  2) Установить обновление (K1SE, прошивка 1.3.5.11)\n"

    if [ "$current" = "none" ]; then
        printf "  ${RED}3) Переключить алгоритм (недоступно)$RESET\n"
    elif [ "$current" = "0" ]; then
        printf "  ${GREEN}3) Переключить алгоритм (сейчас: 0 = старый → станет 1.2 = новый)$RESET\n"
    else
        printf "  ${GREEN}3) Переключить алгоритм (сейчас: 1.2 = новый → станет 0 = старый)$RESET\n"
    fi

    printf "  ${RED}4) ПОЛНЫЙ ОТКАТ (восстановить все из бекапов)$RESET\n"
    printf "  5) Выйти из программы\n"
    printf "Введите номер: "
    read choice

    case "$choice" in
        1) update_k1s_k1max; pause ;;
        2) update_k1se; pause ;;
        3) toggle_algorithm; pause ;;
        4) full_rollback; pause ;;
        5)
            if [ "$NEED_REBOOT" -eq 1 ]; then
                echo_yellow "Изменения внесены — выполняется перезагрузка..."
                reboot
            else
                echo_green "Изменений не обнаружено, перезагрузка не требуется."
                exit 0
            fi
            ;;
        *) echo_red "Неверный выбор, попробуйте снова."; pause ;;
    esac
done
