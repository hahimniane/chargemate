import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.length > 3 && newValue.text.length < 7) {
      final formattedValue =
          '${newValue.text.substring(0, 3)}-${newValue.text.substring(3)}';
      return newValue.copyWith(
        text: formattedValue,
        selection: TextSelection.collapsed(offset: formattedValue.length),
      );
    } else if (newValue.text.length >= 7) {
      final formattedValue =
          '${newValue.text.substring(0, 3)}-${newValue.text.substring(3, 6)}-${newValue.text.substring(6)}';
      return newValue.copyWith(
        text: formattedValue,
        selection: TextSelection.collapsed(offset: formattedValue.length),
      );
    }
    return newValue;
  }
}
