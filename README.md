# Flutter Input validation/Multi-Form Application

## Overview
This is a multi-screen Flutter application that allows users to fill out a job application form. The app validates user input fields such as Name, Email, and Phone Number before proceeding to the next screen.

## Features
- Two screens for input collection
- Input validation for Name, Email, and Phone Number
- Clear error messages when validation fails
- Proper folder structure following best practices
- A simple yet visually appealing user interface

## Folder Structure
```
/lib
│── /screens
│   ├── form_screen1.dart  # First screen (Personal details)
│   ├── form_screen2.dart  # Second screen (Job-related details)
│── /utils
│   ├── validators.dart    # Input validation logic
│── main.dart              # Entry point of the application
```

## Installation
1. Ensure Flutter is installed on your system:
   ```sh
   flutter --version
   ```
2. Clone the repository:
   ```sh
   git clone https://github.com/Annemarie535257/input_validation.git
   ```
3. Navigate to the project folder:
   ```sh
   cd input_validation
   ```
4. Install dependencies:
   ```sh
   flutter pub get
   ```
5. Run the application:
   ```sh
   flutter run
   ```

## Input Validations
- **Name:** Cannot be empty, must contain only letters.
- **Email:** Must follow a valid email format, including a '@' and a dot '.'.
- **Phone Number:** Split into three sections, must contain only digits, and can vary from 10 to 15 numbers if including the country code with a '+' sign.

## Usage
1. Fill out the form on **Screen 1** (Personal Information).
2. Press **Next** to proceed if all inputs are valid.
3. Fill out the form on **Screen 2** (Employment/Student Details).
4. Submit the form after completing all fields.

## Dependencies
This project uses the following dependencies:
- `flutter` (core SDK)
- `validators.dart` (custom validation logic)

## Troubleshooting
If you face any issues, try the following:
1. Run:
   ```sh
   flutter clean
   flutter pub get
   ```
2. Restart your IDE or emulator.


