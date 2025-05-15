# 💪 FitLife - Your Ultimate Fitness Companion

**FitLife** is a powerful cross-platform fitness app built with Flutter. It offers over 2000 exercises with detailed steps and GIFs, customizable workout plans, offline functionality, timers, and personalized recommendations based on your body stats. Whether you're at the gym or working out at home, FitLife helps you stay motivated, organized, and fit.

---

## 🚀 Features

- 🏋️‍♂️ **2000+ Exercises** – Explore a rich library of exercises with steps and visuals (GIFs).
- 🔍 **Smart Discovery** – Search exercises by body part, muscle type, or equipment.
- 📁 **Favorites** – Save your go-to exercises for quick access.
- 📊 **Personalized Plans** – Get recommendations based on height, weight, age, and gender.
- 📶 **Offline Workouts** – Stay fit without needing an internet connection.
- ⏱️ **Built-in Timers** – Time your sets and rest intervals during workouts.
- 🔔 **Custom Notifications** – Get reminders for your upcoming workouts.
- ✅ **Responsive UI** – Smooth and adaptive design across Android and iOS.
- 💚 **Beautiful Theme** – Sleek green & black color scheme with rounded UI components.

---

## 🧠 Technologies Used

- **Flutter & Dart**
- **Provider (ChangeNotifier)** for state management
- **ExerciseDB API** for exercise data
- **Dio** for API handling
- **SharedPreferences & Hive** for local storage
- **Local Notifications**
- **Custom Icons & Figma** for UI/UX design

---

## 📱 App Pages

- **Home Page** – Shows offline workouts and trending exercises.
- **Discovery Page** – Search and explore by categories or keywords.
- **Favorite Page** – Manage and view saved exercises.
- **Settings Page** – Edit profile, preferences, and app settings.
- **User Onboarding** – Collects data like height, weight, age, and gender for tailored plans.

---

## 🏗️ Architecture

- **MVC (Model-View-Controller)** inspired structure
- **State managed with Provider**
- **FutureBuilder** for async data rendering
- **Error handling** with GIFs and fallback messages

---

## 📦 Installation

```bash
git clone https://github.com/yourusername/fitlife.git
cd fitlife
flutter pub get
flutter run
