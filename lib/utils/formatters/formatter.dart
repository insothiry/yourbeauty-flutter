import 'package:intl/intl.dart';

class TForamtter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phnoneNumber) {
    // Asssuming a 10 digit US phone number
    if (phnoneNumber.length == 10) {
      return '(${phnoneNumber.substring(0, 3)}) ${phnoneNumber.substring(3, 6)} ${phnoneNumber.substring(6)}';
    } else if (phnoneNumber.length == 11) {
      return '(${phnoneNumber.substring(0, 4)}) ${phnoneNumber.substring(4, 7)} ${phnoneNumber.substring(7)}';
    }
    return phnoneNumber;
  }

  static String formatCambodianPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 9) {
      // Format for standard 9-digit Cambodian phone numbers
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 10) {
      // Format for 10-digit Cambodian phone numbers (including country code)
      return '+${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 5)} ${phoneNumber.substring(5)}';
    }
    // If the length is not standard, return the original number
    return phoneNumber;
  }
}
