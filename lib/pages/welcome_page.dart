import 'package:flutter/material.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/extensions/img_extendison.dart';
import 'package:travel_app/extensions/sized_box_extension.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import 'navPages/main_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List images = [
    "welcome-one".toPng(),
    "welcome-two".toPng(),
    "welcome-three".toPng(),
  ];

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          
          controller: _controller,
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    images[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 150,
                  left: 20,
                  right: 20,
                ),
                //Title Section
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Title > Desc > Button Column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Title,
                        LargeText(
                          text: "Trips",
                        ),
                        //Subtitle
                        AppText(
                          text: "Mountain",
                          size: 30,
                        ),
                        // Spacing
                        20.ph(),
                        // Description
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text:
                                "Mountain hikes give you an incredible sense of freedom along with endurance.",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        // Spacing
                        40.ph(),
                        // Button
                        RespButton(
                          func: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const MainPage(),
                            ),
                          ),
                        )
                      ],
                    ),
            
                    /// Dots column
                    Column(
                      children: List.generate(
                        3,
                        (dotIndex) => Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          width: 5,
                          height: dotIndex == index ? 15 : 5,
                          decoration: BoxDecoration(
                            color: dotIndex == index
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
