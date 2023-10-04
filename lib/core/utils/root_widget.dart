import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RootWidget extends StatelessWidget {
  final Widget child;
  const RootWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
     FocusScope.of(context).unfocus();
        },
        child: child);
  }
}
