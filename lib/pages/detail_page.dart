import 'package:flutter/material.dart';
import 'package:travel_app/extensions/img_extendison.dart';

import '../colors.dart';
import '../widgets/Detail Page Widgets/buttons_row.dart';
import '../widgets/Detail Page Widgets/detail_info_container.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: AppColors.buttonBackground),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: AppColors.buttonBackground),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.drag_handle_outlined),
          ),
        ],
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            // image box
            Container(
              width: double.infinity,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "mountain".toJpeg(),
                  ),
                ),
              ),
            ),
            // Info Container
            DetailInfoContainer(size: size),

            // Buttons Row
            const Positioned(
              bottom: 16,
              child: ButtonsRow(),
            ),
          ],
        ),
      ),
    );
  }
}
