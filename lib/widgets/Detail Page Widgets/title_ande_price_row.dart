import 'package:flutter/material.dart';

import '../../colors.dart';
import '../app_large_text.dart';

class TitleandPriceRow extends StatelessWidget {
  const TitleandPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title > Location > Star Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            LargeText(text: "Yosemite",size: 24,),
            // Location Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: AppColors.mainColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "USA, Cal",
                    style: TextStyle(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
          ],
        ),
        // Price
        LargeText(
          text: "\$ 250",
          color: AppColors.mainColor,
        )
      ],
    );
  }
}
