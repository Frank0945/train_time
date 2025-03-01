# TRA EasyGo (train_time)

## Overview

TRA EasyGo (train_time), a.k.a. 台鐵一點通, was originally developed as a Cordova app in 2018. However, due to various factors—most notably the unreasonable fees imposed on small nonprofit developers by TDX (Transport Data eXchange), a platform under Taiwan's Ministry of Transportation and Communications—I had to switch the data source to web scraping. To improve performance and maintainability, I migrated the app to Flutter.

The application is designed for querying Taiwan Railway Administration (TRA) schedules. It allows users to check train timetables, view detailed train information, and track real-time train statuses. This project follows Clean Architecture and utilizes Bloc for state management, ensuring maintainability and scalability.

You can download it on **Google Play**: [台鐵一點通](https://play.google.com/store/apps/details?id=com.train_time)


## Features

- Search for train schedules
- View details of specific train services
- Check real-time train status
- Support for theme switching (light/dark mode)

## Tech Stack

### **Framework & Language**

- Flutter (Dart)

### **State Management**

- Bloc (flutter\_bloc)

### **Dependency Injection**

- GetIt

### **Networking**

- Dio (for API requests)
- HTML Parser (for parsing train schedules)

### **Local Storage**

- SharedPreferences (local data storage)

### **Routing**

- GoRouter (for navigation management)

### **Environment Variables**

- Flutter DotEnv (for managing environment variables)

### **Code Generation**

- Freezed (for immutable data models)

## Project Structure

This project follows a combination of **Clean Architecture** and **Vertical Slice Architecture**, structured as follows:

```
lib/
│── core/            # Core modules (utilities, resources, theme management, shared services, etc.)
│── features/        # Feature modules (each function is isolated)
│   ├── schedule_view/  # Train schedule view
│   ├── train_search/   # Train station search
│── shared/params/   # Shared parameters across features
│── injection_container.dart # Dependency injection
│── main.dart         # Application entry point
│── router.dart       # Route configurations
```

### **Core Modules**

- **`core/constants/`**: Defines application-wide constants such as API URLs.
- **`core/resources/`**: Data state management, such as `DataState`.
- **`core/theme/`**: Theme management, including Bloc, colors, and styles.
- **`core/storage/`**: Local storage, such as `SharedPreferencesService`.
- **`core/utils/`**: Utility functions, such as date formatters.

### **Feature Modules**

Each feature module is divided into **data, domain, and presentation** layers:

- **Data Layer**: Handles API requests, data models, and data sources (remote/local).
- **Domain Layer**: Contains business logic, including UseCases and Entities.
- **Presentation Layer**: Manages UI, Bloc, and UI state.

## How to Run

### **1. Clone the repository**

```sh
$ git clone <repo_url>
$ cd train_time
```

### **2. Install dependencies**

```sh
$ flutter pub get
```

### **3. Generate necessary files**

This project uses code generation for data models. Run the following command to generate missing files:

```sh
$ flutter pub run build_runner build --delete-conflicting-outputs
```

### **4. Setup Environment Variables**

Create a `.env` file in the project root and add the required API URLs:

```env
RECORD_QUERY_SCHEDULE_URL=https://example.com/api/record
```

### **5. Run the application**

```sh
$ flutter run
```