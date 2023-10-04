import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class KeyboardVisiblity extends StatelessWidget {
  final height;
  const KeyboardVisiblity(this.height);

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return SizedBox(
        width: double.infinity,
        height: isKeyboardVisible ? height : 0,
      );
    });
  }
}
