import 'package:flutter/material.dart';
import 'package:travel_app/extensions/img_extendison.dart';

import '../colors.dart';
import 'app_large_text.dart';

class ExploreMoreItems extends StatelessWidget {
  ExploreMoreItems({super.key});

  final Map _images = {
    "Kayaking": "kayaking".toPng(),
    "Snrokling": "snorkling".toPng(),
    "Balloning": "balloning".toPng(),
    "Hiking": "hiking".toPng(),
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 100,
      scrollDirection: Axis.horizontal,
      itemCount: _images.length,
      itemBuilder: (_, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(
                  _images.values.toList()[index],
                
                ),
                // fit: BoxFit.cover,
              ),
            ),
          ),
          LargeText(
            text: _images.keys.toList()[index],
            size: 12,
            color: AppColors.mainTextColor,
          ),
        ],
      ),
    );
  }
}
