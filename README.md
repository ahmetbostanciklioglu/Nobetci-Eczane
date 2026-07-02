<div align="center">

# 💊 Nöbetçi Eczane

**Find on-duty (night-shift) pharmacies across Turkey — right from your iPhone.**

![Platform](https://img.shields.io/badge/Platform-iOS-black?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-16-1575F9?style=flat-square&logo=xcode&logoColor=white)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/Nobetci-Eczane?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/Nobetci-Eczane?style=flat-square&color=4776E6)

</div>

## 📖 Overview

Nöbetçi Eczane is a SwiftUI iOS app that lists on-duty pharmacies in Turkey. It fetches the roster of Turkish cities and the current on-duty pharmacy locations from the [NosyAPI](https://www.nosyapi.com) service, then presents them in a browsable list. Tapping a pharmacy opens a detail screen with its name, phone number, address, and city.

The project follows an MVVM architecture with an async/await networking layer, keeping views, view models, models, and services cleanly separated.

## ✨ Features

- 🏙️ **City picker** — loads the full list of Turkish cities from the API.
- 🌙 **On-duty pharmacy list** — shows pharmacies currently on night-shift duty for a location.
- 📄 **Detail view** — displays a pharmacy's name, phone, address, and city.
- ⚡ **Modern concurrency** — networking built on Swift `async`/`await` with a shared `actor` service.
- 🧩 **MVVM structure** — separate `Model`, `View`, `ViewModel`, and `Network` layers.
- 🔌 **Generic, decodable networking** — a single reusable request method decodes any `Codable` response.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/Nobetci-Eczane.git
cd Nobetci-Eczane
open "Nobetci Eczane.xcodeproj"
```

Then select an iOS Simulator (or a connected device) in Xcode and press **⌘R** to build and run.

> **Note:** the app talks to the NosyAPI on-duty-pharmacy service and expects a valid API key configured in `Constants.swift`.

## 📋 Requirements

- iOS 18.0 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
