import 'package:flutter/material.dart';

import '../../colors.dart';
import '../app_large_text.dart';
import '../app_text.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LargeText(
          text: "Description",
          size: 18,
        ),
        AppText(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut eleifend mauris. Duis luctus lorem in elementum finibus. Sed ac metus ut mi faucibus facilisis sed nec risus.",
          size: 14,
          color: AppColors.mainTextColor,
        )
      ],
    );
  }
}
