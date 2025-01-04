import 'package:flutter/material.dart';

class LoaderUtils {
  static void showLoader(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  static void hideLoader(BuildContext context) {
    Navigator.of(context).pop();
  }
}
