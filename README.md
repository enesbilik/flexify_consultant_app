<div align="center">

# 🧑‍💼 Flexify — Consultant App

**Flutter mobile application for service providers on the Flexify appointment platform**

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![GetX](https://img.shields.io/badge/GetX-9C27B0?style=for-the-badge&logo=dart&logoColor=white)]()

</div>

---

## 📖 Overview

The **Flexify Consultant App** is the service-provider side of the Flexify ecosystem — a mobile platform for managing appointments, client interactions, and schedules. Consultants can view bookings, manage availability, and communicate with clients seamlessly.

## ✨ Features

- 📅 View & manage incoming appointment requests
- ✅ Accept / decline bookings
- 📋 Client profile viewing
- 🔔 Real-time notifications
- 🔐 Secure authentication with token management
- 🌐 REST API integration with Flexify backend

## 🛠️ Tech Stack

| Area | Technology |
|------|-----------|
| Framework | Flutter 3.x |
| Language | Dart |
| State Management | GetX |
| HTTP Client | Dio |
| Local Storage | GetStorage |
| Animations | Lottie |
| UI | Material 3 + Custom Components |

## 🏗️ Project Structure

```
lib/
├── app/
│   ├── data/          # Models, providers, repositories
│   ├── modules/       # Feature modules (home, profile, bookings...)
│   ├── routes/        # App routing
│   └── widgets/       # Shared UI components
└── main.dart
```

## 🚀 Getting Started

```bash
git clone https://github.com/enesbilik/flexify_consultant_app.git
cd flexify_consultant_app
flutter pub get
flutter run
```

> Make sure Flexify API is running. See [Flexify-api](https://github.com/enesbilik/Flexify-api)

## 🔗 Related

- [Flexify Client App](https://github.com/enesbilik/flexify_client_app) — End-user mobile app
- [Flexify API](https://github.com/enesbilik/Flexify-api) — Backend service

## 📄 License

MIT
