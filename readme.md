# 🔧 Creality K1 Series - Модифицированная прошивка и документация

[![GitHub stars](https://img.shields.io/github/stars/Tombraider2006/K1?style=social)](https://github.com/Tombraider2006/K1/stargazers)
[![Telegram](https://img.shields.io/badge/Telegram-канал-blue?logo=telegram)](https://t.me/tombraider2006)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![English](https://img.shields.io/badge/lang-English-blue)](README.en.md)

> 📚 Полное руководство по установке и настройке прошивки Klipper для принтеров **Creality K1**, **K1C**, **K1 Max**, **K1 SE**

<h3 align="right"><a href="https://www.tinkoff.ru/rm/yakovleva.irina203/51ZSr71845" target="_blank">💝 Поддержать автора</a></h3>

---

## 📑 Оглавление

- [🚀 Быстрый старт](#-быстрый-старт)
- [📥 Установка прошивки](#-установка-прошивки)
- [🎓 Обучение](#-обучение)
- [📝 Макросы](#-макросы)
- [🔧 Модификации](#-модификации)
- [⚙️ Продвинутые настройки](#️-продвинутые-настройки)
- [💡 Полезные материалы](#-полезные-материалы)
- [❓ FAQ](#-faq)

---

## 🚀 Быстрый старт

<h5 align="center">⭐ Поставьте звездочку проекту - так другим пользователям легче его найти!</h5>

## 📥 Установка прошивки

Подробные инструкции по установке смотрите в разделе:
**[📥 Актуальная версия прошивки с инструкциями по установке](/version_config/readme.md)** - начинайте читать отсюда!

### 📚 Основные разделы:

- **[Обзор прошивки Simple AF](/version_config/SimpleAF.md)** - продвинутый вариант (требуется датчик по Z)
- **[Меню Helper Script](/random/menu.md)** - то, чего не написали нигде...

### 📖 Справочная информация:

- [Коды ошибок K1C](https://store.creality.com/blogs/all/creality-k1c-fault-codes) | [Коды ошибок K1 MAX](https://store.creality.com/blogs/all/creality-k1-max-fault-codes-list)
- **[Читаем графики шейперов](/shaper/readme.md)** - быстро разбираемся с графиками
- **[Регулировка натяжения ремней](/random/belts/readme.md)** - разбираемся с графиками натяжения

---

## 🎓 Обучение

**[Онлайн-консультации и обучение](kurs.md)** - персональное обучение работе с принтером и настройке прошивки
- **[Дополнительные материалы к лекциям](/extras/readme.md)** - полезные модели и информация

---

## 📝 Макросы

- **[Полезные макросы](/macros_helpfull/readme.md)** - упрощаем работу, формируя отдельный раздел с нужными макросами
- **[Управление ретрактом во время печати](/retract/readme.md)** - продвинутая настройка (не всем нужна)
- **[Советы по организации печати](/ferma/readme.md)** - полезные мелочи для процесса печати
- **[Таймер отложенной печати](/random/timer.md)** - частный случай, но может быть полезен
- **[Пропуск самопроверки после сброса](/random/reset.md)** - ускорение после заводских настроек

---

## 🔧 Модификации

### 🛒 Что купить:

- **[Рекомендуемые улучшения](/what_2_buy/readme.md)** - что купить, чтобы принтер вас любил
- **[Актуальные печатные модификации](https://t.me/crealityK1rus/16778)** - самые актуальные модели в Telegram группе

### 🔩 Модификации хотенда:

- **[Замена Unicorn на Volcano](https://3dtoday.ru/blogs/dimix200612/zamena-sopla-unicorn-na-volcano-v-creality-k1)** - удешевление при печати твердыми пластиками
- **[Установка хотенда Creality K2 Plus](https://telegra.ph/Ustanovka-hotenda-ot-Creality-K2-Plus-na-Creality-K1cmaxse-05-13-2)** - увеличение максимального объёмного расхода

### 🛠️ Настройка стола:

- **[Установка стекла для исправления кривизны](https://www.youtube.com/watch?v=6vU0u630IjU&t=867s&ab_channel=ZeroDotCMD)** - видео-инструкция (англ.)
- **[Быстрое исправление наклона стола](https://www.youtube.com/watch?v=S2d_9Ysz-Q8&ab_channel=ZeroDotCMD)** - видео-инструкция (англ.)

### 💡 Определение типа сопла:

**Как быстро определить Unicorn или Volcano:**

- Если видно отверстие на радиаторе хотенда и болтик под шестигранник → **Volcano**
- Если радиатор без отверстий → **Unicorn**

| Volcano | Unicorn |
|---------|---------|
| ![](/random/vulcano.jpg) | ![](/random/unicorn.jpg) | 

---

## ⚙️ Продвинутые настройки 
**ОчУмелые Ручки**

> ⚠️ **Внимание!** Моды в этом разделе предназначены для опытных пользователей. Выполняются на свой страх и риск.

### 🖥️ Дополнительное оборудование:

- **[Зачем нужен одноплатник?](/random/pi.md)** - установка Spoolman, Telegram Bot, Klipperscreen
- **[Raspberry Pico для расширения](/usb/readme.md)** - дополнительные пины для модификаций

### 🔥 Активная термокамера:

<details>
<summary><b>Сборник мануалов по термокамере</b></summary>

1. **[Подключение нагревателя камеры](/random/heater_chamber/readme.md)** - для печати ABS и подобных пластиков
2. **[Установка iHeater](https://docs.idryer.org/iHeater/README_ru/)** - универсальное решение для любого принтера на Klipper
3. **[Продвинутая термокамера с MCU](https://github.com/artem-sedykh/K1C-chamber-heater)** - вариант с дополнительным контроллером

</details>

### 🎯 Датчики и сенсоры:

- **[Датчик филамента SFS 2.0](/sfs/readme.md)** - обнаружение обрыва, пробок и запутывания
- **[BTT Eddy](https://ballaswag.github.io/blog/creality-k1-btt-eddy-guide/)** - установка датчика BTT Eddy
- **[Держатель BTT Eddy](https://www.printables.com/model/1040464-btteddy-creality-k1-k1c-k1-max-mount)** - модель для печати
- **[Cartographer 3D](https://docs.cartographer3d.com/cartographer-probe/installation-and-setup/creality-k1-and-k1-max-specific)** - альтернатива тензодатчикам

### 🌡️ Охлаждение:

- **[Вентилятор Roborock](https://telegra.ph/Podklyuchenie-ventilyatora-Roborock-syaososa-k-3d-printeram-linejki-K1-06-06)** - улучшенное охлаждение для PLA/TPU

### 🔌 Электроника и сеть:

- **[Установка RJ45](/random/ethernet.md)** - проводной интернет (требует пайки)
- **[WLED освещение](https://github.com/Gliptopolis/WLED_Klipper)** - RGB подсветка для принтера
- **[Virtual Pins](/random/pins.md)** - расширенное управление через виртуальные пины
- **[Custom Macro](/random/custom_macro.md)** - разбор системы макросов Creality

### 📚 Техническая документация:

- **[Распиновка плат принтера](https://docs.google.com/presentation/d/1f6kJbMq7uSggC33zmIfcTPdG6r50PbbDut14u9vAcZA/edit#slide=id.g2c17ef9f2a4_0_0)** - для энтузиастов
- **[Бутлоадер от Creality](https://github.com/CrealityOfficial/K1_Series_Annex/releases/tag/V1.0.0)** - официальная прошивка

### 🦾 Экстремальные модификации:

- **[FBP Mod](https://github.com/tlace17/K1-Flanged-Bearing-Project)** - замена стоковых деталей на печатные
- **[Переход на чистый Klipper](https://github.com/pellcorp/creality/wiki/K1-Stock-Mainboard-Less-Creality)** - без Creality
- **[Обновленный тензомод](https://github.com/Sekilsgs2/creality_pellcorp)** - автоматизированная установка
- **[Установка MANTA 8](https://docs.google.com/document/d/1aXhsg2oq-k43R_2uWEkFxx4bUmE72XdTxru3hAUbRM0/edit?tab=t.0)** - замена материнской платы
- **[Подключение OrangePi](https://github.com/Lukich86/K1-host-conversion)** - замена управляющего компьютера

### 📖 Дополнительно:

- **[FAQ перед первым включением](/random/before_use.md)** - ⚠️ устарело, но может быть полезно

---

## 💡 Полезные материалы

### 🌐 Сообщество и поддержка:

- **[Telegram группа](https://t.me/crealityK1rus)** - русскоязычное сообщество пользователей K1
- **[Telegram канал автора](https://t.me/tombraider2006)** - новости и обновления

### 🗂️ Дополнительные разделы:

- **[ERCF](/ercf/readme.md)** - мультиматериальная система

---

## ❓ FAQ

**В:** Какую версию прошивки использовать?  
**О:** Смотрите раздел [Установка прошивки](/version_config/readme.md) - там описана актуальная версия

**В:** Нужно ли делать все модификации?  
**О:** Нет! Начните с базовой установки прошивки. Модификации добавляйте по мере необходимости

**В:** Как определить тип сопла?  
**О:** См. раздел [Модификации](#-модификации) - там есть визуальные отличия

**В:** Где найти печатные модели для модификаций?  
**О:** [Актуальные модели в Telegram](https://t.me/crealityK1rus/16778)

---

## 📞 Контакты и поддержка

- 📧 **Telegram канал:** [@tombraider2006](https://t.me/tombraider2006)
- 💬 **Telegram группа:** [Creality K1 RUS](https://t.me/crealityK1rus)
- 🎓 **Обучение:** [Онлайн-консультации](kurs.md)
- 💝 **Поддержать проект:** [Tinkoff](https://www.tinkoff.ru/rm/yakovleva.irina203/51ZSr71845)

---

<div align="center">

### ⭐ Если этот проект был вам полезен, поставьте звездочку! ⭐

**Сделано с ❤️ для сообщества Creality K1**

[![Star History](https://img.shields.io/github/stars/Tombraider2006/K1?style=social)](https://github.com/Tombraider2006/K1/stargazers)

</div>
