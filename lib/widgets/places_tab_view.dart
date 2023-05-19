import 'package:flutter/material.dart';
import 'package:travel_app/extensions/img_extendison.dart';
import 'package:travel_app/pages/detail_page.dart';

class PlacesTabView extends StatelessWidget {
  const PlacesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (_, int index) => GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const DetailPage())),
        child: Container(
          margin: const EdgeInsets.only(right: 8.0, top: 16.0),
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(
                "mountain".toJpeg(),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
