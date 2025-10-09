# 🔧 Creality K1 Series - Modified Firmware & Documentation

[![GitHub stars](https://img.shields.io/github/stars/Tombraider2006/K1?style=social)](https://github.com/Tombraider2006/K1/stargazers)
[![Telegram](https://img.shields.io/badge/Telegram-channel-blue?logo=telegram)](https://t.me/tombraider2006)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Russian](https://img.shields.io/badge/lang-русский-red)](readme.md)

> 📚 Complete guide for installing and configuring Klipper firmware for **Creality K1**, **K1C**, **K1 Max**, **K1 SE** printers

<h3 align="right"><a href="https://www.tinkoff.ru/rm/yakovleva.irina203/51ZSr71845" target="_blank">💝 Support the Author</a></h3>

---

## 📑 Table of Contents

- [🚀 Quick Start](#-quick-start)
- [📥 Firmware Installation](#-firmware-installation)
- [🎓 Training & Consultation](#-training--consultation)
- [📝 Macros](#-macros)
- [🔧 Modifications](#-modifications)
- [⚙️ Advanced Settings](#️-advanced-settings)
- [💡 Useful Materials](#-useful-materials)
- [❓ FAQ](#-faq)

---

## 🚀 Quick Start

<h5 align="center">⭐ Star this project to help others find it!</h5>

**[📥 Latest firmware version with installation instructions](/version_config/readme.md)** - start reading here!

### 📚 Main Sections:

- **[Simple AF Firmware Overview](/version_config/SimpleAF.md)** - advanced variant (requires Z sensor)
- **[Additional Lecture Materials](/extras/readme.md)** - useful models and information
- **[Helper Script Menu](/random/menu.md)** - what's not written anywhere else...

### 📖 Reference Information:

- [K1C Error Codes](https://store.creality.com/blogs/all/creality-k1c-fault-codes) | [K1 MAX Error Codes](https://store.creality.com/blogs/all/creality-k1-max-fault-codes-list)
- **[Reading Shaper Graphs](/shaper/readme.md)** - quick guide to shaper analysis
- **[Belt Tension Adjustment](/random/belts/readme.md)** - understanding belt tension graphs

---

## 📥 Firmware Installation

For detailed installation instructions, see **[version_config](/version_config/readme.md)**

---

## 🎓 Training & Consultation

**[Online Consultations and Training](kurs.md)** - personalized training for printer operation and firmware setup (Russian language)

---

## 📝 Macros

- **[Useful Macros](/macros_helpfull/readme.md)** - simplify work with a dedicated macro section
- **[Retraction Control During Print](/retract/readme.md)** - advanced settings (not for everyone)
- **[Print Organization Tips](/ferma/readme.md)** - useful details for the printing process
- **[Delayed Print Timer](/random/timer.md)** - specific use case, but can be helpful
- **[Skip Self-Check After Reset](/random/reset.md)** - speed up after factory reset

---

## 🔧 Modifications

### 🛒 What to Buy:

- **[Recommended Upgrades](/what_2_buy/readme.md)** - what to buy to make your printer love you
- **[Latest Printable Modifications](https://t.me/crealityK1rus/16778)** - most up-to-date models in Telegram group

### 🔩 Hotend Modifications:

- **[Replace Unicorn with Volcano](https://3dtoday.ru/blogs/dimix200612/zamena-sopla-unicorn-na-volcano-v-creality-k1)** - cost reduction for tough materials
- **[Install Creality K2 Plus Hotend](https://telegra.ph/Ustanovka-hotenda-ot-Creality-K2-Plus-na-Creality-K1cmaxse-05-13-2)** - increase maximum volumetric flow

### 🛠️ Bed Setup:

- **[Install Glass to Fix Warping](https://www.youtube.com/watch?v=6vU0u630IjU&t=867s&ab_channel=ZeroDotCMD)** - video tutorial
- **[Quick Bed Tilt Fix](https://www.youtube.com/watch?v=S2d_9Ysz-Q8&ab_channel=ZeroDotCMD)** - video tutorial

### 💡 Nozzle Type Identification:

**How to quickly identify Unicorn or Volcano:**

- If you can see a hole on the hotend radiator with a hex bolt → **Volcano**
- If the radiator has no holes → **Unicorn**

| Volcano | Unicorn |
|---------|---------|
| ![](/random/vulcano.jpg) | ![](/random/unicorn.jpg) |

---

## ⚙️ Advanced Settings

> ⚠️ **Warning!** Mods in this section are for experienced users. Proceed at your own risk.

### 🖥️ Additional Hardware:

- **[Why Single-Board Computer?](/random/pi.md)** - install Spoolman, Telegram Bot, Klipperscreen
- **[Raspberry Pico Expansion](/usb/readme.md)** - additional pins for modifications

### 🔥 Active Heated Chamber:

<details>
<summary><b>Chamber Heating Manual Collection</b></summary>

1. **[Connect Chamber Heater](/random/heater_chamber/readme.md)** - for printing ABS and similar materials
2. **[Install iHeater](https://docs.idryer.org/iHeater/README_ru/)** - universal solution for any Klipper printer
3. **[Advanced Chamber with MCU](https://github.com/artem-sedykh/K1C-chamber-heater)** - variant with additional controller

</details>

### 🎯 Sensors:

- **[SFS 2.0 Filament Sensor](/sfs/readme.md)** - detects breaks, jams, and tangles
- **[BTT Eddy](https://ballaswag.github.io/blog/creality-k1-btt-eddy-guide/)** - BTT Eddy sensor installation
- **[BTT Eddy Holder](https://www.printables.com/model/1040464-btteddy-creality-k1-k1c-k1-max-mount)** - printable model
- **[Cartographer 3D](https://docs.cartographer3d.com/cartographer-probe/installation-and-setup/creality-k1-and-k1-max-specific)** - alternative to load cell sensors

### 🌡️ Cooling:

- **[Roborock Fan](https://telegra.ph/Podklyuchenie-ventilyatora-Roborock-syaososa-k-3d-printeram-linejki-K1-06-06)** - improved cooling for PLA/TPU

### 🔌 Electronics & Network:

- **[Install RJ45](/random/ethernet.md)** - wired internet (requires soldering)
- **[WLED Lighting](https://github.com/Gliptopolis/WLED_Klipper)** - RGB lighting for printer
- **[Virtual Pins](/random/pins.md)** - extended control via virtual pins
- **[Custom Macro](/random/custom_macro.md)** - understanding Creality macro system

### 📚 Technical Documentation:

- **[Printer Board Pinout](https://docs.google.com/presentation/d/1f6kJbMq7uSggC33zmIfcTPdG6r50PbbDut14u9vAcZA/edit#slide=id.g2c17ef9f2a4_0_0)** - for enthusiasts
- **[Creality Bootloader](https://github.com/CrealityOfficial/K1_Series_Annex/releases/tag/V1.0.0)** - official firmware

### 🦾 Extreme Modifications:

- **[FBP Mod](https://github.com/tlace17/K1-Flanged-Bearing-Project)** - replace stock parts with printed ones
- **[Switch to Pure Klipper](https://github.com/pellcorp/creality/wiki/K1-Stock-Mainboard-Less-Creality)** - without Creality
- **[Updated Strain Gauge Mod](https://github.com/Sekilsgs2/creality_pellcorp)** - automated installation
- **[Install MANTA 8](https://docs.google.com/document/d/1aXhsg2oq-k43R_2uWEkFxx4bUmE72XdTxru3hAUbRM0/edit?tab=t.0)** - motherboard replacement
- **[Connect OrangePi](https://github.com/Lukich86/K1-host-conversion)** - control computer replacement

### 📖 Additional:

- **[FAQ Before First Use](/random/before_use.md)** - ⚠️ outdated but may be useful

---

## 💡 Useful Materials

### 🌐 Community & Support:

- **[Telegram Group](https://t.me/crealityK1rus)** - Russian-speaking K1 user community
- **[Author's Telegram Channel](https://t.me/tombraider2006)** - news and updates

### 🗂️ Additional Sections:

- **[VPN Setup](/vpn/vpn.md)** - remote printer access
- **[ERCF](/ercf/readme.md)** - multi-material system

---

## ❓ FAQ

**Q:** Which firmware version should I use?  
**A:** See [Firmware Installation](/version_config/readme.md) section - current version is described there

**Q:** Do I need to do all modifications?  
**A:** No! Start with basic firmware installation. Add modifications as needed

**Q:** How to identify nozzle type?  
**A:** See [Modifications](#-modifications) section - visual differences are shown there

**Q:** Where to find printable models for modifications?  
**A:** [Latest models on Telegram](https://t.me/crealityK1rus/16778)

---

## 📞 Contacts & Support

- 📧 **Telegram Channel:** [@tombraider2006](https://t.me/tombraider2006)
- 💬 **Telegram Group:** [Creality K1 RUS](https://t.me/crealityK1rus)
- 🎓 **Training:** [Online Consultations](kurs.md) (Russian)
- 💝 **Support Project:** [Tinkoff](https://www.tinkoff.ru/rm/yakovleva.irina203/51ZSr71845)

---

<div align="center">

### ⭐ If this project was helpful, please star it! ⭐

**Made with ❤️ for Creality K1 Community**

[![Star History](https://img.shields.io/github/stars/Tombraider2006/K1?style=social)](https://github.com/Tombraider2006/K1/stargazers)

</div>

