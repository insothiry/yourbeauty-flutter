class TValidator {
  // Email Validator
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  // Password Validator
  static String? validatePasswords(String? value) {
    if (value == null || value.isEmpty) {
      return 'Passwords are required';
    }
    // check for minimun password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    // check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contains at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }
}
