import 'package:flutter/material.dart';

class OwnerSectionWidget extends StatelessWidget {
  const OwnerSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/user.png',
          ),
        ),
        const SizedBox(width: 16),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Garry Allen',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Owner',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF858585),
              ),
            )
          ],
        ),
        const Spacer(),
        Row(
          children: [
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: const Color(0xFF0A8ED9).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: const Color(0xFF0A8ED9).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
