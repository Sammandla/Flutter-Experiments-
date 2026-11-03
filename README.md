# Flutter Experiments - Complete Laboratory Suite

A curated collection of 9 comprehensive Flutter laboratory experiments covering fundamental UI design, reactive input handling, state management, routing, SQLite database persistence, and cloud-native Google Cloud Firestore integration.

Each experiment is structured as a standalone, production-ready Flutter project that can be opened, built, and executed independently in **VS Code**, **Android Studio**, or via the **Flutter CLI**.

---

## 📋 Table of Experiments

| # | Experiment Title | Key Concepts & Widgets | Directory |
|---|---|---|---|
| **01** | [Working with Widgets and Layouts](#experiment-1--working-with-widgets-and-layouts) | `Row`, `Column`, `Container`, `Card`, `ListView`, Custom Widgets, Asset Images | [`Experiment-1/`](./Experiment-1) |
| **02** | [Adaptive & Responsive UI Design](#experiment-2--adaptive--responsive-ui-design) | `LayoutBuilder`, `GridView`, Breakpoints, Responsive Product Cards | [`Experiment-2/`](./Experiment-2) |
| **03** | [Interactivity, Input & Forms](#experiment-3--interactivity-input--forms) | `TextField`, `TextEditingController`, Dynamic List Filtering, `StatefulWidget` | [`Experiment-3/`](./Experiment-3) |
| **04** | [Form Validation using Stateful Widgets](#experiment-4--form-validation-using-stateful-widgets) | `Form`, `TextFormField`, Input Validators, State Management, Mathematical Logic | [`Experiment-4/`](./Experiment-4) |
| **05** | [Navigation and Named Routing](#experiment-5--navigation-and-named-routing) | `MaterialApp.routes`, `Navigator.pushNamed`, Route Arguments passing, Data Models | [`Experiment-5/`](./Experiment-5) |
| **06** | [Data Persistence with SQLite](#experiment-6--data-persistence-with-sqlite) | `sqflite`, Local SQL Database, CRUD Operations, Database Helper, Asynchronous IO | [`Experiment-6/`](./Experiment-6) |
| **07** | [Data Persistence with Cloud Firestore](#experiment-7--data-persistence-with-google-cloud-firestore) | `firebase_core`, `cloud_firestore`, Document Creation, Real-time Stream Builders | [`Experiment-7/`](./Experiment-7) |
| **08** | [Searching Data in Cloud Firestore](#experiment-8--searching-information-in-google-firestore-database) | Firestore Queries (`where`), Dynamic Search by Name / Registration Number | [`Experiment-8/`](./Experiment-8) |
| **09** | [Updating Data in Cloud Firestore](#experiment-9--updating-information-in-google-firestore-database) | Fetch-then-Edit workflow, Document Updating (`update`), Real-time State Sync | [`Experiment-9/`](./Experiment-9) |

---

## 🛠️ Experiment Details

### Experiment 1: Working with Widgets and Layouts
- **Objective:** Design and build a Fruit Market catalog application showcasing Flutter's core layout model and widget tree composition.
- **Key Features:**
  - Custom reusable `FruitItem` widget.
  - Image assets loaded locally from `assets/images/` (`apple.jpeg`, `banana.jpeg`, `mango.jpeg`, `orange.jpeg`).
  - Cohesive layout using `Card`, `Padding`, `Row`, `Column`, and `ListView`.
- **Primary Files:** [`Experiment-1/lib/main.dart`](./Experiment-1/lib/main.dart), [`Experiment-1/pubspec.yaml`](./Experiment-1/pubspec.yaml)

### Experiment 2: Adaptive & Responsive UI Design
- **Objective:** Create a multi-column e-commerce product catalog that automatically recalculates grid columns based on device screen widths.
- **Key Features:**
  - Responsive layout dynamically controlled by `LayoutBuilder`.
  - Column scaling: 2 columns (Compact/Mobile), 3 columns (Medium/Tablet), 4 columns (Expanded/Desktop).
  - Reusable `ProductCard` component displaying item thumbnail, name, description, and action button.
- **Primary Files:** [`Experiment-2/lib/main.dart`](./Experiment-2/lib/main.dart)

### Experiment 3: Interactivity, Input & Forms
- **Objective:** Implement interactive search and real-time filtering over an in-memory product collection.
- **Key Features:**
  - Controlled text input utilizing `TextEditingController` with immediate change listeners.
  - Dynamically filtered `ListView.builder` with smooth UI updates.
  - Responsive feedback states: default collection view, live search matching, and empty search results.
- **Primary Files:** [`Experiment-3/lib/main.dart`](./Experiment-3/lib/main.dart)

### Experiment 4: Form Validation using Stateful Widgets
- **Objective:** Develop a Car Mileage Calculator application with strict form validation, error handling, and reactive state calculation.
- **Key Features:**
  - Input grouping with `GlobalKey<FormState>` and `TextFormField`.
  - Numerical sanity checks (positive floats, non-zero fuel consumption validation).
  - Formula computation: $\text{Mileage} = \frac{\text{Distance Travelled}}{\text{Fuel Consumed}}$.
- **Primary Files:** [`Experiment-4/lib/main.dart`](./Experiment-4/lib/main.dart)

### Experiment 5: Implementation of Navigation and Routing
- **Objective:** Structure multi-screen navigation using named routes while passing typed data between screens.
- **Key Features:**
  - Screen 1 (`home_screen.dart`): Student input form for registration number, name, and multi-subject marks.
  - Screen 2 (`second_screen.dart`): Result view extracting arguments with `ModalRoute.of(context)` to compute total, percentage, and grade.
  - Strongly-typed data encapsulation using `UserData` (`user_data_model.dart`).
- **Primary Files:** [`Experiment-5/lib/main.dart`](./Experiment-5/lib/main.dart), [`Experiment-5/lib/home_screen.dart`](./Experiment-5/lib/home_screen.dart), [`Experiment-5/lib/second_screen.dart`](./Experiment-5/lib/second_screen.dart)

### Experiment 6: Data Persistence Using SQLite
- **Objective:** Implement structured offline data storage using a local relational SQLite database.
- **Key Features:**
  - SQLite database initialization, table creation, and connection handling via `sqflite`.
  - Form validation ensuring student marks fall within the valid range $[0, 100]$.
  - Persistent Create and Read operations with asynchronous database queries.
- **Primary Files:** [`Experiment-6/lib/main.dart`](./Experiment-6/lib/main.dart)

### Experiment 7: Data Persistence Using Google Cloud Firestore
- **Objective:** Connect a Flutter application to a serverless NoSQL cloud database (Google Cloud Firestore).
- **Key Features:**
  - Firebase initialization using `firebase_core` and `firebase_options.dart`.
  - Storing student records in the `students` Firestore collection using the student registration number as the document ID.
  - Real-time updates with Firestore reactive stream snapshots.
- **Primary Files:** [`Experiment-7/lib/main.dart`](./Experiment-7/lib/main.dart), [`Experiment-7/firebase.json`](./Experiment-7/firebase.json)

### Experiment 8: Searching Information in Google Firestore Database
- **Objective:** Query and retrieve targeted documents from a Cloud Firestore collection based on user search parameters.
- **Key Features:**
  - Search by Student Name or Registration Number.
  - Dynamic Firestore queries with real-time UI feedback (loading spinners, found records, or "no record" alert).
  - Clean error handling for network timeouts and missing documents.
- **Primary Files:** [`Experiment-8/lib/main.dart`](./Experiment-8/lib/main.dart)

### Experiment 9: Update Information in Google Firestore Database
- **Objective:** Implement document updating workflows against an existing Cloud Firestore database collection.
- **Key Features:**
  - Two-stage workflow: Look up existing student record by registration number, populate editable text controllers.
  - Modify department, student name, and marks.
  - Commit updates using Firestore's `update()` API with validation.
- **Primary Files:** [`Experiment-9/lib/main.dart`](./Experiment-9/lib/main.dart)

---

## 🚀 Getting Started & Execution Instructions

### Prerequisites
1. **Flutter SDK**: Version `3.13.0` or higher installed ([Flutter Install Guide](https://docs.flutter.dev/get-started/install)).
2. **Dart SDK**: Bundled with Flutter.
3. **IDE**: [VS Code](https://code.visualstudio.com/) (with Flutter and Dart extensions) or [Android Studio](https://developer.android.com/studio).
4. **Target Device**: Android Emulator, physical Android/iOS device, or Chrome / Windows desktop runtime.

### Running an Individual Experiment

Each experiment is a self-contained Flutter project. You can run any experiment directly from the command line:

```bash
# 1. Navigate to the desired experiment folder
cd Experiment-1

# 2. Fetch required dependencies
flutter pub get

# 3. Verify connected devices
flutter devices

# 4. Launch the application
flutter run
```

### Opening in VS Code or Android Studio

- **Option A (Recommended)**: Open an individual experiment folder (e.g. `File > Open Folder...` -> Select `Experiment-1`). This allows the IDE to recognize `pubspec.yaml` at the root and provide full Dart language server features, debugging, and hot reload.
- **Option B (Monorepo view)**: Open the root `Flutter-Experiments` folder. In VS Code, you can use multi-root workspaces or open terminals in each subfolder.

---

## 📁 Repository Structure

```text
Flutter-Experiments/
├── .gitignore
├── README.md
├── Experiment-1/                  # Fruit Market App (Widgets & Layouts)
│   ├── assets/images/             # Local fruit image assets
│   ├── lib/main.dart
│   └── pubspec.yaml
├── Experiment-2/                  # E-Commerce Product Catalog (Adaptive Grid)
│   ├── lib/main.dart
│   └── pubspec.yaml
├── Experiment-3/                  # Interactive Product Search
│   ├── lib/main.dart
│   └── pubspec.yaml
├── Experiment-4/                  # Car Mileage Calculator with Form Validation
│   ├── lib/main.dart
│   └── pubspec.yaml
├── Experiment-5/                  # Navigation & Named Routing
│   ├── lib/
│   │   ├── home_screen.dart
│   │   ├── second_screen.dart
│   │   ├── user_data_model.dart
│   │   └── main.dart
│   └── pubspec.yaml
├── Experiment-6/                  # SQLite Student Record Persistence
│   ├── lib/main.dart
│   └── pubspec.yaml
├── Experiment-7/                  # Cloud Firestore Student Record Creation
│   ├── firebase.json
│   ├── lib/
│   │   ├── firebase_options.dart
│   │   └── main.dart
│   └── pubspec.yaml
├── Experiment-8/                  # Cloud Firestore Student Search
│   ├── firebase.json
│   ├── lib/
│   │   ├── firebase_options.dart
│   │   └── main.dart
│   └── pubspec.yaml
└── Experiment-9/                  # Cloud Firestore Student Update
    ├── firebase.json
    ├── lib/
    │   ├── firebase_options.dart
    │   └── main.dart
    └── pubspec.yaml
```

---

## ☁️ Firebase Configuration Note (Experiments 7, 8, & 9)

Experiments 7, 8, and 9 utilize **Firebase Cloud Firestore**. The repositories include standard `firebase.json` and default `firebase_options.dart` configuration templates. If you wish to connect these experiments to your own Google Cloud Firebase project:
1. Install the Firebase CLI: `npm install -g firebase-tools`
2. Run `firebase login`
3. Run `flutterfire configure` inside the experiment directory.
4. Ensure your Firestore rules allow read/write operations for testing:
   ```javascript
   rules_version = '2';
   service cloud.firestore {
     match /databases/{database}/documents {
       match /students/{studentId} {
         allow read, write: if true;
       }
     }
   }
   ```

---

## 👤 Author

- **Repository:** [Sammandla/Flutter-Experiments-](https://github.com/Sammandla/Flutter-Experiments-)
- **Author:** [Sammandla](https://github.com/Sammandla)

