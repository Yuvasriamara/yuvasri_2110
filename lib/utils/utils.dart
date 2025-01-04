class Utils {
  // Validate email format
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  // Format price
  static String formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  // Validate phone number (simple)
  static bool isValidPhoneNumber(String phone) {
    final phoneRegex = RegExp(r'^[0-9]{10}$');
    return phoneRegex.hasMatch(phone);
  }
}
