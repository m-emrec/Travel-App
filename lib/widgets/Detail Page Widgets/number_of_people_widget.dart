import 'package:flutter/material.dart';

import '../../colors.dart';
import '../app_large_text.dart';
import '../app_text.dart';

class NumberOfPeopleWidget extends StatefulWidget {
  const NumberOfPeopleWidget({
    super.key,
  });

  @override
  State<NumberOfPeopleWidget> createState() => _NumberOfPeopleWidgetState();
}

class _NumberOfPeopleWidgetState extends State<NumberOfPeopleWidget> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text
        LargeText(text: "People", size: 18),
        // Desc
        AppText(
          text: "Number of people in your group.",
          size: 14,
          color: AppColors.mainTextColor,
        ),
        // Boxes
        Wrap(
          children: [
            ...List.generate(
              5,
              (index) {
                final bool isSelected = selectedIndex == index;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 56,
                    height: 56,
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.black54
                          : AppColors.buttonBackground,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
