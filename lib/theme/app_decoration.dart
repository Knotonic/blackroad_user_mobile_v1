import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get txtFill2 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get txtFill1 => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get outline => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onError,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.gray5003a,
      );
  static BoxDecoration get fill9 => BoxDecoration(
        color: appTheme.red40001,
      );
  static BoxDecoration get fill8 => BoxDecoration(
        color: appTheme.indigo400,
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.5),
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.gray90007,
      );
  static BoxDecoration get outline1 => BoxDecoration();
  static BoxDecoration get fill7 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.orange100,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.5),
      );
  static BoxDecoration get txtOutline => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray900,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get fill10 => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get txtOutline1 => BoxDecoration();
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL64 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        64,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        64,
      ),
    ),
  );

  static BorderRadius customBorderBL24 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
  );

  static BorderRadius customBorderBL12 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius customBorderTL36 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        36,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        36,
      ),
    ),
  );

  static BorderRadius circleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );

  static BorderRadius txtCustomBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius circleBorder68 = BorderRadius.circular(
    getHorizontalSize(
      68,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius circleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder83 = BorderRadius.circular(
    getHorizontalSize(
      83,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    