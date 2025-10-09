[↩️ Назад в главное меню](../readme.md)

---

# 💻 Зачем нам одноплатник?

> Различные модули которые не могут встать на родную ОС - Spoolman, Telegram Bot, KlipperScreen

<h3 align="right"><a href="https://www.tinkoff.ru/rm/yakovleva.irina203/51ZSr71845" target="_blank">💝 Поддержать автора</a></h3>

---

## 📑 Оглавление

- [📖 Введение](#-введение)
- [📱 Telegram Bot](#-telegram-bot)
- [📦 Spoolman](#-spoolman)
- [🖥️ KlipperScreen](#️-klipperscreen)

---

## 📖 Введение

Если у вас нет еще умного дома и есть принтер, то хорошей покупкой может стать небольшой одноплатный компьютер расширяющий возможности нашего принтера.

**Дело в том** что на принтере установлена сильно кастрированная операционная система, которая не даст воспользоваться благами цивилизации которые возможны с обычным Klipper. 

Рассматривать примеры мы будем на примере **Orange Pi**. Мою статью по установке операционной системы на нее можно почитать [тут](https://3d-diy.ru/blog/ustanovka-os-na-orange-pi-3-lts/)

---

## 📱 Telegram Bot

### Что умеет:

- ✅ Уведомления в боте
- ✅ Контроль параметров во время печати
- ✅ Управление принтером
- ✅ И многое другое!

**Пример интерфейса:**

![](/random/images/telegram.png)

### Установка:

Чтобы это заработало на удаленном сервере необходимо:

1. Поставить [KIAUH](https://github.com/dw-0/kiauh)
2. Создать папку `/home/pi/printer_data/config`
3. Положить в ней конфиг телеграм бота `telegram.conf`

### Содержимое файла telegram.conf:

```ini
[bot]
server: ваш_IP:7125
bot_token: ваш_токен
chat_id: ваш_чат_айди



[camera]
host: http://ваш_IP:4408//webcam/?action=stream

[progress_notification]
time: 60

[telegram_ui]
buttons: [status,pause,cancel,resume],[files,emergency,macros,shutdown]
silent_progress: true
hidden_macros: ACCURATE_G28, AUTOTUNE_SHAPERS, BED_LEVELING, BED_MESH_CALIBRATE, END_PRINT_POINT, DEFINE_OBJECT, END_CURRENT_OBJECT, END_PRINT, END_PRINT_POINT_WITHOUT_LIFTING, FIRST_FLOOR_PAUSE, FIRST_FLOOR_PAUSE_POSITION, FIRST_FLOOR_RESUME, G29, GET_TIMELAPSE_SETUP, HYPERLAPSE, INPUTSHAPER, KAMP_BED_MESH_SETTINGS, KAMP_PURGE_LINE_SETTINGS, KLIPPER_BACKUP_CONFIG, KLIPPER_RESTORE_CONFIG, LIST_EXCLUDED_OBJECTS, LIST_OBJECTS, LOAD_MATERIAL, LOAD_MATERIAL_CLOSE_FAN2, LOAD_MATERIAL_RESTORE_FAN2, M106, M107, M141, M191, M204, M205, M900, MOONRAKER_BACKUP_DATABASE, MOONRAKER_RESTORE_DATABASE, PID_BED, PRINT_CALIBRATION, PRINT_PREPARE_CLEAR, PRINT_PREPARED, PRINTER_PARAM, QUIT_MATERIAL, REMOVE_ALL_EXCLUDED, RESTORE_E_CURRENT, SET_E_MIN_CURRENT, SET_GCODE_OFFSET, START_CURRENT_OBJECT, START_PRINT, TEST_STREAM_DELAY, TIMELAPSE_RENDER, TUNOFFINPUTSHAPER, TIMELAPSE_TAKE_FRAME, WAIT_TEMP_END, WAIT_TEMP_START, XYZ_READY

silent_commands: true

[status_message_content]
content: progress, height, filament_length, filament_weight, print_duration, eta, finish_time, m117_status, tgnotify_status, last_update_time
sensors: mcu, chamber_temp
heaters: extruder, heater_bed, orange_pi, mcu_temp
fans: fan0, chamber_fan, soc_fan, fan2
```

⚠️ **Не забываем** поправить IP принтера, а также вставить chat_id и токен.

Больше инструкций можно найти на [Wiki проекта](https://github.com/nlef/moonraker-telegram-bot)

---

## 📦 Spoolman

### Что это?

**Spoolman** — это самостоятельный веб-сервис, разработанный для того, чтобы помочь вам эффективно управлять катушками филамента для 3D-принтера и контролировать их использование. Он действует как централизованная база данных, которая легко интегрируется с популярным программным обеспечением для 3D-печати Klipper / Moonraker. При подключении он автоматически обновляет вес катушек по мере печати, предоставляя вам информацию об использовании филамента в режиме реального времени.

### Функции:

- ✅ **Управление нитью** - ведите подробный учет типов филамента, производителей и отдельных катушек
- ✅ **Интеграция API** - REST API обеспечивает простую интеграцию с другим ПО
- ✅ **Обновления в реальном времени** - через Websockets
- ✅ **Центральная база данных филаментов** - поддерживаемая сообществом
- ✅ **Веб-клиент** - управление через браузер
- ✅ **Печать этикеток с QR-кодами** - для легкой идентификации катушек
- ✅ **Управление несколькими принтерами** - одновременно!

![](/random/images/spoolman.png)

### Установка:

После установки [отсюда](https://github.com/Donkie/Spoolman) необходимо указать в файле `moonraker.conf` следующие строки:

```ini
[spoolman]
server: http://ваш_IP:7912
#   URL to the Spoolman instance. This parameter must be provided.
sync_rate: 5
```

Вместо `ваш_IP` указываем IP-адрес сервера Spoolman.

![](/random/images/spollman2.png)

📖 Почитать про интеграцию Spoolman в OrcaSlicer [**можно тут**](https://t.me/tombraider2006/92)

---

## 🖥️ KlipperScreen

Если у вас есть экран с тачскрином ну или лишний монитор с мышкой, то ваш одноплатник может выступить в качестве дополнительного экрана вашего принтера, **даже если он находится в другой комнате!** 🚀

![](/random/images/klipperscreen1.png)

### Установка:

1. Установить [KIAUH](https://github.com/dw-0/kiauh)
2. Через него установить KlipperScreen

Более подробно можно почитать [тут](https://github.com/KlipperScreen/KlipperScreen)

### Настройка:

Содержимое файла `KlipperScreen.conf` в папке `/home/pi/printer_data/config`:

```ini
[printer k1]
# Camera configuration
#camera_url: http://ваш_IP:4408//webcam/?action=stream
# Define the moonraker host/port if different from 127.0.0.1 and 7125
moonraker_host: ваш_IP
moonraker_port: 7125
```

`ваш_IP` замените на адрес вашего принтера в локальной сети.

![](/random/images/klipperscreen2.png)

---

<div align="center">

**[↩️ Вернуться в главное меню](../readme.md)**

</div>
