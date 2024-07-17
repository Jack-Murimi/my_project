import 'package:flutter/cupertino.dart';
import 'package:my_project/utils/constants/sizes.dart';

class MySpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    bottom: MySizes.defaultSpace,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
  );
}
