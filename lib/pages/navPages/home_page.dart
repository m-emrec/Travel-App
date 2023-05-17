import 'package:flutter/material.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/extensions/sized_box_extension.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categorieController = 0;

  final List _categories = [
    "Places",
    "Inspiration",
    "Emotions",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LargeText(text: "Discover"),
          // Spacing
          16.ph(),

          ///Categories
          Row(
            children: List.generate(
              3,
              (index) => CategoryText(
                text: _categories[index],
              ),
            ),
          ),
          // ListView

          // Explore more Row

          // ListView
        ],
      ),
    );
  }
}

class CategoryText extends StatelessWidget {
  const CategoryText({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: isSelected
                  ? AppColors.bigTextColor
                  : AppColors.buttonBackground,
            ),
          ),
          Visibility(
            visible: isSelected,
            child: CircleAvatar(
              backgroundColor: AppColors.mainColor,
              radius: 3,
            ),
          )
        ],
      ),
    );
  }
}
