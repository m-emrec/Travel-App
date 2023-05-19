import 'package:flutter/material.dart';
import 'package:travel_app/extensions/sized_box_extension.dart';

import '../../colors.dart';
import '../responsive_button.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //FAvorite button
        Container(
          margin: const EdgeInsets.only(left: 8),
          width: size.width * 0.15,
          height: size.width * 0.15,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: AppColors.mainColor,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            Icons.favorite_outline_sharp,
            color: AppColors.mainColor,
          ),
        ),
        16.pw(),
        RespButton(
          func: () {},
          isShort: false,
          text: "Book Trip Now",
          width: size.width * 0.78,
        )
      ],
    );
  }
}
