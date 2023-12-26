import 'package:flutter/material.dart';
import 'package:home_rent/model/filter_type_house.dart';

class SectionMenuFilterWidget extends StatelessWidget {
  final FilterTypeHouse filter;

  const SectionMenuFilterWidget({
    super.key,
    required this.filter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: filter.isActive ? null : const Color(0xFFf7f7f7),
            gradient: filter.isActive
                ? const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFA0DAFB),
                      Color(0xFF0A8ED9),
                    ],
                    stops: [0.0, 1.0],
                  )
                : null,
          ),
          height: 40,
          child: Center(
            child: Text(
              filter.text,
              style: TextStyle(
                color: filter.isActive ? Colors.white : const Color(0xFF858585),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
