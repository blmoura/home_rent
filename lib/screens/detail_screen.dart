import 'package:flutter/material.dart';
import 'package:home_rent/model/house.dart';
import 'package:home_rent/widgets/details/gallery_widget.dart';
import 'package:home_rent/widgets/details/house_image_widget.dart';
import 'package:home_rent/widgets/details/owner_section_widget.dart';
import 'package:home_rent/widgets/title_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final House house = ModalRoute.of(context)!.settings.arguments as House;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HouseImageWidget(house: house),
              const SizedBox(height: 20),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF858585),
                ),
              ),
              const SizedBox(height: 24),
              const OwnerSectionWidget(),
              const SizedBox(height: 32),
              const Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 21),
              const GalleryWidget()
            ],
          ),
        ),
      ),
    );
  }
}
