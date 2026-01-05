import 'package:flutter/material.dart';

class LeftImageWidget extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  const LeftImageWidget({super.key, this.imagePath, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
                image: AssetImage(imagePath!),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}