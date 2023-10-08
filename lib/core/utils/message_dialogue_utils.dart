import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

import '../../main.dart';

class MessageDialogUtils {
  ///common method for hiding progress dialog
  static void showError(String message) {
    globalMessengerKey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void success(String message) {
    globalMessengerKey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
