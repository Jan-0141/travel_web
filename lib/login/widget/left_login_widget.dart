import 'package:flutter/material.dart';

class LeftLoginWidget extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  const LeftLoginWidget({super.key, this.imagePath, this.height, this.width});

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