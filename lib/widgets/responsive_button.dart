import 'package:flutter/material.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/extensions/img_extendison.dart';

class RespButton extends StatelessWidget {
  const RespButton({
    super.key,
    this.isShort = true,
    this.width,
    this.text, required this.func,
  });

  final bool isShort;
  final double? width;
  final String? text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        // padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: width,
        height: 60,
        child: isShort
            ? Image.asset("button-one".toPng())
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text ?? "",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Image.asset("button-one".toPng()),
                ],
              ),
      ),
    );
  }
}
