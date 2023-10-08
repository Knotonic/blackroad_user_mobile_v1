import 'package:flutter/material.dart';

import 'navigator_service.dart';

class HideKeyboard {
  static void hide() {
    FocusScope.of(NavigatorService.navigatorKey.currentState!.context)
        .unfocus();
  }
}
