String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name cannot be empty';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email cannot be empty';
  }
  // Corrected regex for better email validation
  if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
    return 'Enter a valid email';
  }
  return null;
}

String? validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number cannot be empty';
  }
  if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)) {
    return 'Enter a valid phone number';
  }
  return null;
}
