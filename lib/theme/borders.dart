import 'package:flutter/material.dart';

import 'package:dev_flutter/theme/colors.dart';

class CustomBorder {
  static Border horizontalBorder = Border.symmetric(
    horizontal: BorderSide(
      width: 0.2,
      color: CustomColors.border,
    )
  );

  static Border allBorder = Border.all(
    color: CustomColors.border,
    width: 0.2,
  );
}
