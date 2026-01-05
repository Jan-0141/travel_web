import 'package:flutter/material.dart';

import '../../widget/reft_image_widget.dart';
import 'widget/right_create_user.dart';





class CreteUserPage extends StatefulWidget {
  const CreteUserPage({super.key});

  @override
  State<CreteUserPage> createState() => _CreteUserPageState();
}

class _CreteUserPageState extends State<CreteUserPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children:  [
          LeftImageWidget(
            width: width * 0.5,
            height: height,
            imagePath: 'asset/images/login_left.png',
          ),
          RightCreateUserWidget(
            width: width * 0.5,
            height: height,          ),
        ],
      ),
    );
  }
}