import 'package:flutter/widgets.dart';

import '/common/app_colors.dart';

Text mainText(text, {double size = 14.0}) {
  return Text(
    text,
    style: TextStyle(
      color: AppColors.mainTextColor,
      fontSize: size,
    ),
  );
}

Text titleText(text, {double size = 24.0,}) {
  return Text(
    text,
    // softWrap: false,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text secondaryText(text, {double size = 14.0}) {
  return Text(
    text,
    softWrap: true,
    // maxLines: 1,
    style: TextStyle(

      overflow: TextOverflow.ellipsis,
      color: AppColors.secondaryTextColor,
      fontSize: size,

    ),
  );
}

Text activeText(text,
    {double size = 14.0, FontWeight weight = FontWeight.normal}) {
  return Text(
    text,
    style: TextStyle(
      color: AppColors.secondaryColor,
      fontSize: size,
      fontWeight: weight,
    ),
  );
}

Text infoText(text, {double size = 14.0}) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
      height: 2.0,
      fontSize: size,
    ),
  );
}

Text cardTitleText(text, {double size = 18.0, double height = 1.2}) {
  return Text(
    text,
    softWrap: true,
    maxLines: 2,
    style: TextStyle(
      color: AppColors.mainTextColor,
      height: height,
      fontSize: size,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.bold,
    ),
  );
}
