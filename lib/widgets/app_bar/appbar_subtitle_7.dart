import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle7 extends StatelessWidget {
  AppbarSubtitle7({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
            letterSpacing: getHorizontalSize(
              0.06,
            ),
            color: appTheme.whiteA70001,
          ),
        ),
      ),
    );
  }
}
