# 🍽️ Meals App

A simple and clean **Flutter Meals Application** that allows users to add, save, manage, and view their favorite food recipes.

The app is built as a Flutter learning project and focuses on local data storage, clean navigation, responsive UI, and feature-based project structure.

---

## 📱 App Preview

| Onboarding 1 | Onboarding 2 | Home Screen |
|-------------|--------------|-------------|
| <img src="screenshotes/onboarding1.png" width="250"> | <img src="screenshotes/onboarding2.png" width="250"> | <img src="screenshotes/home1.png" width="250"> |

| Home Screen | Add Meal | Add Meal Form |
|------------|----------|---------------|
| <img src="screenshotes/home2.png" width="250"> | <img src="screenshotes/add_meal1.png" width="250"> | <img src="screenshotes/add_meal2.png" width="250"> |

| Meal Details |
|-------------|
| <img src="screenshotes/details_screen2.png" width="250"> |

> Make sure the image names match the real files inside the `screenshotes/` folder.

---

## ✨ Overview

**Meals App** is a Flutter application designed to help users manage their favorite meals and recipes.

Users can add new meals with details, view saved meals, and open a details screen for each meal. The app also uses local storage to save meals on the device and keeps the onboarding screen from appearing every time after the first launch.

---

## 🚀 Features

- Onboarding screens for first-time users
- Home screen to display saved meals
- Add new meal screen
- Meal details screen
- Local data storage using SQLite
- Save onboarding state using SharedPreferences
- Form validation before saving meals
- Clean navigation using GoRouter
- Responsive UI using Flutter ScreenUtil
- Carousel slider for onboarding screens
- Dots indicator for onboarding progress
- Feature-based project structure

---

## 🛠️ Tech Stack

- **Flutter**
- **Dart**
- **SQLite**
- **SharedPreferences**
- **GoRouter**
- **Flutter ScreenUtil**
- **Carousel Slider**
- **Dots Indicator**

---

## 📦 Packages Used

```yaml
dependencies:
  flutter:
    sdk: flutter
  sqflite:
  shared_preferences:
  go_router:
  flutter_screenutil:
  carousel_slider:
  dots_indicator:
```

> Check `pubspec.yaml` for the exact package versions.

---

## 📁 Project Structure

```txt
lib/
├── main.dart
│
├── core/
│   ├── routing/
│   │   └── app routing files
│   │
│   ├── styles/
│   │   └── app colors, text styles, and styling files
│   │
│   └── widgets/
│       └── reusable shared widgets
│
└── features/
    ├── onboarding/
    │   └── onboarding screens and widgets
    │
    ├── home_screen/
    │   └── home screen UI and related widgets
    │
    ├── add_meal/
    │   └── add meal screen, form, and logic
    │
    └── meal_details/
        └── meal details screen
```

---

## 🏗️ Architecture

The project follows a **Feature-Based Architecture**.

### Core Layer

The `core` folder contains shared code used across the whole application, such as:

- App routing
- Styling files
- Reusable widgets

### Features Layer

The `features` folder contains the main app modules.  
Each feature is separated into its own folder to keep the project clean, readable, and easy to maintain.

### Local Storage

The app uses **SQLite** to store meal data locally on the device.  
It also uses **SharedPreferences** to save the onboarding state, so the onboarding screens appear only on the first launch.

---

## 📲 Screens

### Onboarding

Introduces the app using slider screens and page indicators.

### Home

Displays all saved meals in a clean and simple interface.

### Add Meal

Allows users to add a new meal with validation before saving.

### Meal Details

Displays full information about a selected meal.

---

## ⚙️ Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/rimonnnn/meals-app-.git
```

### 2. Navigate to the project folder

```bash
cd meals-app-
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the app

```bash
flutter run
```

---

## 📌 Requirements

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android Emulator or physical device

---

## 🔮 Future Improvements

- Add edit meal feature
- Add delete meal confirmation dialog
- Add search functionality
- Add meal categories
- Add image picker for meal photos
- Improve database helper structure
- Add Provider or Cubit for state management
- Add dark mode
- Add animations and micro-interactions
- Add unit and widget tests

---

## 👨‍💻 Author

**Rimon Abdelmasih**

- GitHub: [rimonnnn](https://github.com/rimonnnn)
- LinkedIn: [Rimon Abdelmasih](https://www.linkedin.com/in/rimon-abdelmasih)

---

## 📄 License

This project is built for learning and portfolio purposes.