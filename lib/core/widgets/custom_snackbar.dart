import 'package:flutter/material.dart';

class CustomSnackBar {
  CustomSnackBar._();
  static void showSnackBar({
    required BuildContext context,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(milliseconds: 500),
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.bottom + 10),
      ),
    );
  }
}
