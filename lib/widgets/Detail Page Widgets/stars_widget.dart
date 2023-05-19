import 'package:flutter/material.dart';

import '../../colors.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Icon(
              Icons.star_border_rounded,
              color: AppColors.mainTextColor,
              size: 18,
            ),
          ),
        ),
        Text(
          "(0.0)",
          style: TextStyle(
            color: AppColors.mainTextColor,
          ),
        )
      ],
    );
  }
}
