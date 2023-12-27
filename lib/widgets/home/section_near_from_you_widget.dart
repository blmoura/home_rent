import 'package:flutter/material.dart';
import 'package:home_rent/model/house.dart';

class SectionNearFromYouWidget extends StatelessWidget {
  final House house;
  final void Function() onSelectedHouse;

  const SectionNearFromYouWidget({
    super.key,
    required this.house,
    required this.onSelectedHouse,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: InkWell(
        onTap: onSelectedHouse,
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              width: 222,
              height: 272,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: ExactAssetImage(house.assetImage),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              width: 222,
              height: 272,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3757, 1.0],
                  colors: [
                    Color.fromRGBO(13, 13, 13, 0.0),
                    Color.fromRGBO(0, 0, 0, 0.8),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.24),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${house.locationInKm.toString()} km',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    house.subtitle,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
