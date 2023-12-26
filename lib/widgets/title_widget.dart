import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
