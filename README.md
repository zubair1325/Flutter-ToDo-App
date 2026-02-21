# ToDo App

A professional Flutter-based task management application that helps users organize, track, and manage their daily tasks efficiently.

## 📋 Overview

ToDo App is a feature-rich task management application built with Flutter, designed to provide a clean and intuitive user interface for managing to-do lists. The app allows users to create, update, and delete tasks while maintaining a beautiful Material Design aesthetic with a modern blue theme.

## ✨ Features

- **Create Tasks**: Add new to-do items with a simple and intuitive modal interface
- **View Tasks**: Browse all tasks in an organized list view with task details
- **Update Tasks**: Edit existing task descriptions easily
- **Delete Tasks**: Remove completed or unwanted tasks
- **Task Management**: View task status (Pending, Completed, etc.)
- **Responsive UI**: Works seamlessly across all device sizes and orientations
- **Material Design**: Modern and clean user interface following Google's Material Design guidelines
- **Cross-Platform**: Runs on Android, iOS, Windows, Linux, macOS, and Web

## 🏗️ Project Structure

```
lib/
├── main.dart                  # Application entry point and root widget
├── home_screen.dart          # Main home screen with task list
├── add_new_task_modal.dart   # Modal for adding new tasks
└── update_task_modal.dart    # Modal for updating existing tasks
```

### File Descriptions

- **main.dart**: Contains the `MyApp` class that initializes the Flutter application and sets up the MaterialApp with the HomePage as the home screen. Disables the debug banner for a professional appearance.

- **home_screen.dart**: The main screen of the application featuring:
  - AppBar with "Todos" title and blue background
  - ListView with 20 sample tasks
  - ListTile items displaying task details (title, date, status)
  - Floating Action Button to add new tasks
  - Task actions menu (Edit/Update and Delete options)

- **add_new_task_modal.dart**: Bottom sheet modal for creating new tasks with:
  - Close button to dismiss the modal
  - Multi-line text input field for task description
  - Add button to save the new task

- **update_task_modal.dart**: Bottom sheet modal for editing existing tasks with:
  - Close button to dismiss the modal
  - Multi-line text input field for task description
  - Update button to save changes

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (version 3.10.4 or higher)
- Dart SDK (bundled with Flutter)
- Android Studio, Xcode, or VSCode with Flutter extension
- A connected device or emulator for testing

### Installation

1. **Clone or Download the Project**

   ```bash
   git clone <repository-url>
   cd todo_app
   ```

2. **Install Dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the Application**
   ```bash
   flutter run
   ```

### Running on Specific Devices

- **Android Emulator**:

  ```bash
  flutter run
  ```

- **iOS Simulator**:

  ```bash
  flutter run -d macos
  ```

- **Web Browser**:

  ```bash
  flutter run -d chrome
  ```

- **Windows Desktop**:
  ```bash
  flutter run -d windows
  ```

## 💻 Usage

### Creating a New Task

1. Tap the blue **+** (Floating Action Button) at the bottom-right of the screen
2. Enter your task description in the text field
3. Tap the **Add** button to save the task

### Updating a Task

1. Tap on any task in the list to open the actions menu
2. Select **Update** from the dialog
3. Edit the task description
4. Tap the **Update** button to save changes

### Deleting a Task

1. Tap on any task in the list to open the actions menu
2. Select **Delete** from the dialog
3. The task will be removed from the list

## 🛠️ Technologies Used

- **Framework**: Flutter
- **Language**: Dart
- **UI Design**: Material Design 3
- **State Management**: StatefulWidget (current implementation)
- **Icons**: Material Icons
- **Platform Support**:
  - Android
  - iOS
  - Windows
  - Linux
  - macOS
  - Web

## 📦 Dependencies

### Core Dependencies

- `flutter`: UI framework for building cross-platform applications
- `cupertino_icons`: iOS-style icon fonts

### Development Dependencies

- `flutter_test`: Testing framework for Flutter
- `flutter_lints`: Linting rules for code quality

## 🔄 Current Implementation Status

The application currently demonstrates the UI and workflow with static data (20 hardcoded sample tasks). The add, update, and delete functions are connected to the UI but are not yet fully implemented with persistent data storage.

## 🎨 Design Highlights

- **Color Scheme**: Blue primary color with white text
- **Typography**: Material Design text styles
- **Icons**: Intuitive Material Icons for actions
- **Layout**: Clean ListView with CircleAvatar for task numbering
- **Modals**: Bottom sheet modals for task operations

## 📱 Supported Platforms

- ✅ Android 5.0 and above
- ✅ iOS 11.0 and above
- ✅ Windows 10 and above
- ✅ Linux
- ✅ macOS
- ✅ Web (Chrome, Firefox, Safari)

## 🚀 Future Enhancements

- **Local Storage**: Implement SQLite or Hive for persistent data storage
- **State Management**: Integrate Provider, Riverpod, or Bloc for better state management
- **Task Categories**: Organize tasks by categories
- **Priority Levels**: Add task priority levels (High, Medium, Low)
- **Due Dates**: Include due date and time reminders
- **Task Completion**: Mark tasks as completed with visual indicators
- **Search Functionality**: Search and filter tasks
- **Cloud Sync**: Sync tasks across devices using Firebase
- **Notifications**: Push notifications for reminders
- **Dark Mode**: Support for dark theme
- **User Authentication**: Login and multi-user support

## 📚 Learning Resources

For help getting started with Flutter development:

- [Flutter Official Documentation](https://docs.flutter.dev/)
- [Dart Language Guide](https://dart.dev/)
- [Flutter Codelab: Write Your First App](https://docs.flutter.dev/get-started/codelab)
- [Flutter Cookbook: Useful Samples](https://docs.flutter.dev/cookbook)
- [Flutter YouTube Channel](https://www.youtube.com/flutterdev)

## 📄 License

This project is open source and available under the MIT License.

## 👨‍💻 Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests with improvements.

## ❓ Support

For questions or issues, please open an issue on the repository.

---

**Happy Task Managing!** 📝
