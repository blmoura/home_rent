import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.201,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFC4C4C4),
              image: const DecorationImage(
                image: ExactAssetImage('assets/images/gallery1.jpeg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        },
      ),
    );
  }
}
