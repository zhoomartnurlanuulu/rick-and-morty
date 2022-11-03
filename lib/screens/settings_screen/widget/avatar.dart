import 'dart:io';

import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String image;
  const AvatarWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [buildImage()]),
    );
  }

  Widget buildImage() {
    final images = image.contains('assets/images')
        ? AssetImage(image)
        : FileImage(File(image));

    return ClipOval(
      child: Image(
        image: images as ImageProvider,
        fit: BoxFit.fill,
        width: 190,
        height: 190,
      ),
    );
  }
}
