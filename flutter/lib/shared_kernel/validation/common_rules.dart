class CommonValidationRules {
  const CommonValidationRules._();

  static final RegExp emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final RegExp phoneRegex = RegExp(r'^\+?[0-9]{8,15}$');
  static final RegExp numericRegex = RegExp(r'^-?[0-9]+(\.[0-9]+)?$');
  static final RegExp urlRegex = RegExp(
    r'^(https?:\/\/)?' // protocol
    r'((([a-z\d]([a-z\d-]*[a-z\d])*)\.)+[a-z]{2,}|' // domain name
    r'((\d{1,3}\.){3}\d{1,3}))' // OR ip (v4) address
    r'(:\d+)?(\/[-a-z\d%_.~+]*)*' // port and path
    r'(\?[;&a-z\d%_.~+=-]*)?' // query string
    r'(\#[-a-z\d_]*)?$', // fragment locator
    caseSensitive: false,
  );

  /// Validates if a string is a valid email.
  static bool isEmail(String? value) {
    if (value == null || value.trim().isEmpty) return false;
    return emailRegex.hasMatch(value.trim());
  }

  /// Validates if a string is a valid phone number.
  static bool isPhone(String? value) {
    if (value == null || value.trim().isEmpty) return false;
    return phoneRegex.hasMatch(value.trim());
  }

  /// Validates if a string is numeric.
  static bool isNumeric(String? value) {
    if (value == null || value.trim().isEmpty) return false;
    return numericRegex.hasMatch(value.trim());
  }

  /// Validates if a string is a valid URL.
  static bool isUrl(String? value) {
    if (value == null || value.trim().isEmpty) return false;
    return urlRegex.hasMatch(value.trim());
  }
}
