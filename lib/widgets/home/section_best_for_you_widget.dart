import 'package:flutter/material.dart';
import 'package:home_rent/model/house.dart';

class SectionBestForYouWidget extends StatelessWidget {
  final House house;

  const SectionBestForYouWidget({
    super.key,
    required this.house,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      margin: const EdgeInsets.only(bottom: 24),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 74,
              height: 74,
              margin: const EdgeInsets.only(right: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: ExactAssetImage(house.assetImage),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  house.title,
                ),
                const SizedBox(height: 8),
                Text(
                  'Rp. ${house.price} / Year',
                  style: const TextStyle(
                    color: Color(0xFF0A8ED9),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.bed,
                          color: Color(0xFF858585),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${house.quantityBedrooms.toString()} Bedrooms',
                          style: const TextStyle(
                            color: Color(0xFF858585),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.bed,
                          color: Color(0xFF858585),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${house.quantityBedrooms.toString()} Bathrooms',
                          style: const TextStyle(
                            color: Color(0xFF858585),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
