# 🍽️ Meals App

A simple and clean **Flutter Meals Application** that allows users to add, save, manage, and view their favorite food recipes.

The app is built as a Flutter learning project and focuses on local data storage, clean navigation, responsive UI, and feature-based project structure.

---

## 📱 App Preview

| Onboarding 1 | Onboarding 2 | Empty Home |
|-------------|--------------|------------|
| <img src="screenshotes/onboarding_1.png" width="250"> | <img src="screenshotes/onboarding_2.png" width="250"> | <img src="screenshotes/empty_home_screen.png" width="250"> |

| Home Screen | Add Meal 1 | Add Meal 2 |
|------------|------------|------------|
| <img src="screenshotes/home_screen.png" width="250"> | <img src="screenshotes/add_meal_1.png" width="250"> | <img src="screenshotes/add_meal_2.png" width="250"> |

| Meal Details |
|-------------|
| <img src="screenshotes/details_screen.png" width="250"> |

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
  cupertino_icons: ^1.0.8
  sqflite: ^2.4.1
  shared_preferences: ^2.5.3
  flutter_screenutil: ^5.9.3
  go_router: ^17.0.0
  carousel_slider: ^5.1.1
  dots_indicator: ^4.0.1
```

---

## 📁 Project Structure

```txt
lib/
├── main.dart
│
├── core/
│   ├── data_base_helper/
│   │   └── database_helper.dart
│   │
│   ├── routing/
│   │   ├── app_routes.dart
│   │   └── router_generator_config.dart
│   │
│   ├── styles/
│   │   └── app_text_style.dart
│   │
│   └── widgets/
│       ├── custom_button_widget.dart
│       └── spacing_widgets.dart
│
└── features/
    ├── add_meals_screen/
    │   ├── add_meals_screen.dart
    │   └── widgets/
    │       ├── add_meal_item_widget.dart
    │       └── custom_text_field_widget.dart
    │
    ├── home_screen/
    │   ├── home_screen.dart
    │   └── widgets/
    │       └── home_screen_item.dart
    │
    ├── meals_details_screen/
    │   └── meals_details_screen.dart
    │
    └── onboarding_screen/
        ├── onboarding_screen.dart
        ├── model/
        │   └── onboarding_model.dart
        └── widgets/
            └── onboarding_item.dart
```

---

## 🏗️ Architecture

The project follows a **Feature-Based Architecture** with a shared `core` layer.

### Core Layer

The `core` folder contains shared code used across the whole application:

- Database helper
- Routing configuration
- Shared text styles
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
If there are no meals saved yet, the app displays an empty home state.

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