import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';


class InAppUpdate extends StatelessWidget {
  Widget child;
  InAppUpdate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
        upgrader: Upgrader(
          debugLogging: true,
          dialogStyle: UpgradeDialogStyle.cupertino,
        ),
        child: child);
  }
}
