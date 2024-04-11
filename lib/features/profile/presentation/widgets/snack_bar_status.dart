import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';

class SnackBarNotifier {
  // Function to show success snack bar
  void showSuccess(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: AppColors.mainGreen, // Optional: Change color for success
      duration: const Duration(seconds: 3), // Optional: Set duration for the snack bar
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Function to show error snack bar
  void showError(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red, // Optional: Change color for error
      duration: const Duration(seconds: 3), // Optional: Set duration for the snack bar
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
