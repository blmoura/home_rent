import 'package:flutter/material.dart';
import 'package:home_rent/model/house.dart';

class HouseImageWidget extends StatelessWidget {
  final House house;
  const HouseImageWidget({
    super.key,
    required this.house,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: house.title,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 305,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: ExactAssetImage(house.assetImage),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 305,
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
          left: 16,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.24),
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.navigate_before_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 16,
          child: Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.24),
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.bookmark_outline,
                color: Colors.white,
              ),
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
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.bed,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '${house.quantityBedrooms} Bedrooms',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.bathtub,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '${house.quantityBathrooms} Bathrooms',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
