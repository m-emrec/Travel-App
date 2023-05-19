import 'package:flutter/material.dart';
import 'package:travel_app/extensions/sized_box_extension.dart';
import 'package:travel_app/widgets/Detail%20Page%20Widgets/stars_widget.dart';
import 'package:travel_app/widgets/Detail%20Page%20Widgets/title_ande_price_row.dart';

import 'description_widget.dart';
import 'number_of_people_widget.dart';

class DetailInfoContainer extends StatelessWidget {
  const DetailInfoContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: size.width,
        height: size.height * 0.65,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Notch
              Center(
                child: Container(
                  width: 50,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Container(
                      width: 20,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(16),
                  ),
                    ),
                  ),
                ),
              ),
              // Title and price row
              const TitleandPriceRow(),
              //Stars
              const StarsWidget(),
              32.ph(),
              // People Number
              const NumberOfPeopleWidget(),
              32.ph(),
              //Description
              const DescriptionWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
