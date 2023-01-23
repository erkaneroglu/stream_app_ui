import 'package:flutter/material.dart';

class S {
  static final colors = _Colors();
  static final textStyles = _TextStyles();
  static final shadows = _Shadows();
  static final padding = _Paddings();
  static final margins = _Margins();
  static final textAlignments = _TextAlignments();
}

class _Colors {
  final transparent = Colors.transparent;
  final textColor = Colors.black;

  final mainBackgroundColor = const Color(0xff181A21);
  final themeIndigo = const Color(0xff704CFF);
  final themeRed = const Color(0xffFF404D);
  final themeGrey = const Color(0xff515259);
  final themeSearchBarBG = const Color(0xff20222A);

  final green = const Color(0xff2fd073);
  final greenLight = const Color(0xffbaefd0);
  final greenDark = const Color(0xff104526);

  final turquoise = const Color(0xff1fe0ba);
  final turquoiseLight = const Color(0xffb4f5e8);
  final turquoiseDark = const Color(0xff0a4b3e);

  final blue = const Color(0xff2691d9);
  final blueLight = const Color(0xffb7daf2);
  final blueDark = const Color(0xff0d3048);

  final purple = const Color(0xff944eb1);
  final purpleLight = const Color(0xffdbc4e5);
  final purpleDark = const Color(0xff311a3b);

  final black = const Color(0xff5a7fa5);
  final blackLight = const Color(0xffc8d4e1);
  final blackDark = const Color(0xff1e2a37);

  final yellow = const Color(0xfff1c40e);
  final yellowLight = const Color(0xfffaebaf);
  final yellowDark = const Color(0xff504105);

  final orange = const Color(0xfff39a0c);
  final orangeLight = const Color(0xfffbddae);
  final orangeDark = const Color(0xff513304);

  final red = const Color(0xffe32f1c);
  final redLight = const Color(0xfff6bab3);
  final redDark = const Color(0xff4c1009);

  final white = Colors.white;

  final grey = const Color(0xff75828a);
  final greyLight = const Color(0xffd1d5d8);
  final greyDark = const Color(0xff272b2e);
}

class _TextStyles {
  final light = TextStyle(
    color: _Colors().textColor,
    fontWeight: FontWeight.w300,
  );

  final regular = TextStyle(
    color: _Colors().textColor,
    fontWeight: FontWeight.w400,
  );

  final medium = TextStyle(
    color: _Colors().textColor,
    fontWeight: FontWeight.w500,
  );

  final semiBold = TextStyle(
    color: _Colors().textColor,
    fontWeight: FontWeight.w600,
  );

  final bold = TextStyle(
    color: _Colors().textColor,
    fontWeight: FontWeight.w700,
  );

  final extraBold = TextStyle(
    color: _Colors().textColor,
    fontWeight: FontWeight.w800,
  );

  final lightWhite = TextStyle(
    color: _Colors().white,
    fontWeight: FontWeight.w300,
  );

  final regularWhite = TextStyle(
    color: _Colors().white,
    fontWeight: FontWeight.w400,
  );

  final mediumWhite = TextStyle(
    color: _Colors().white,
    fontWeight: FontWeight.w500,
  );

  final semiBoldWhite = TextStyle(
    color: _Colors().white,
    fontWeight: FontWeight.w600,
  );

  final boldWhite = TextStyle(
    color: _Colors().white,
    fontWeight: FontWeight.w700,
  );

  final extraBoldWhite = TextStyle(
    color: _Colors().white,
    fontWeight: FontWeight.w800,
  );

  final lightGrey = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w300,
  );

  final regularGrey = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  );

  final mediumGrey = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );

  final semiBoldGrey = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
  );

  final boldGrey = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  );

  final extraBoldGrey = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w800,
  );
}

class _Shadows {
  final sShadowBlack = [
    BoxShadow(
      color: Colors.black.withOpacity(.15),
      blurRadius: 2,
      offset: const Offset(0, 2),
    ),
  ];

  final mShadow = [
    const BoxShadow(
      blurRadius: 30,
      offset: Offset(2, 2),
    ),
  ];

  final lShadow = [
    const BoxShadow(
      blurRadius: 40,
      offset: Offset(3, 3),
    ),
  ];
}

class _Paddings {
  final all6 = const EdgeInsets.all(6);
  final all8 = const EdgeInsets.all(8);
  final all12 = const EdgeInsets.all(12);
  final all16 = const EdgeInsets.all(16);
  final all24 = const EdgeInsets.all(24);
  final all36 = const EdgeInsets.all(36);
  final all48 = const EdgeInsets.all(48);

  final v6 = const EdgeInsets.symmetric(vertical: 6);
  final v8 = const EdgeInsets.symmetric(vertical: 8);
  final v12 = const EdgeInsets.symmetric(vertical: 12);
  final v16 = const EdgeInsets.symmetric(vertical: 16);
  final v24 = const EdgeInsets.symmetric(vertical: 24);
  final v36 = const EdgeInsets.symmetric(vertical: 36);
  final v48 = const EdgeInsets.symmetric(vertical: 48);

  final h6 = const EdgeInsets.symmetric(horizontal: 6);
  final h8 = const EdgeInsets.symmetric(horizontal: 8);
  final h12 = const EdgeInsets.symmetric(horizontal: 12);
  final h16 = const EdgeInsets.symmetric(horizontal: 16);
  final h24 = const EdgeInsets.symmetric(horizontal: 24);
  final h36 = const EdgeInsets.symmetric(horizontal: 36);
  final h48 = const EdgeInsets.symmetric(horizontal: 48);
}

class _Margins {
  final all6 = const EdgeInsets.all(6);
  final all8 = const EdgeInsets.all(8);
  final all12 = const EdgeInsets.all(12);
  final all16 = const EdgeInsets.all(16);
  final all24 = const EdgeInsets.all(24);
  final all36 = const EdgeInsets.all(36);

  final v6 = const EdgeInsets.symmetric(vertical: 6);
  final v8 = const EdgeInsets.symmetric(vertical: 8);
  final v12 = const EdgeInsets.symmetric(vertical: 12);
  final v16 = const EdgeInsets.symmetric(vertical: 16);
  final v24 = const EdgeInsets.symmetric(vertical: 24);
  final v36 = const EdgeInsets.symmetric(vertical: 36);

  final h6 = const EdgeInsets.symmetric(horizontal: 6);
  final h8 = const EdgeInsets.symmetric(horizontal: 8);
  final h12 = const EdgeInsets.symmetric(horizontal: 12);
  final h16 = const EdgeInsets.symmetric(horizontal: 16);
  final h24 = const EdgeInsets.symmetric(horizontal: 24);
  final h36 = const EdgeInsets.symmetric(horizontal: 36);
}

class _TextAlignments {
  final center = TextAlign.center;
  final right = TextAlign.right;
  final left = TextAlign.left;
  final start = TextAlign.start;
  final end = TextAlign.end;
}
