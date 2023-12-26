import 'package:flutter/material.dart';

class SectionSearchWidget extends StatelessWidget {
  const SectionSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.only(
              left: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF838383),
                  size: 30,
                ),
                hintText: 'Search address, or near you',
                hintStyle: TextStyle(
                  color: Color(0xFF858585),
                  fontSize: 12,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFA0DAFB),
                  Color(0xFF0A8ED9),
                ],
                stops: [0.0, 1.0],
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.filter_alt_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          onTap: () {},
        ),
        const SizedBox(width: 24)
      ],
    );
  }
}
