import 'package:flutter/material.dart';

class NotificationItemImage extends StatelessWidget {
  final String image;
  const NotificationItemImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(image),
        ),
      ],
    );
  }
}
