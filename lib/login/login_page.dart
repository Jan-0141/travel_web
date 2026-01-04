import 'package:flutter/material.dart';

import 'widget/left_login_widget.dart';
import 'widget/right_login_widget.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children:  [
          LeftLoginWidget(
            width: width * 0.5,
            height: height,
            imagePath: 'asset/images/login_left.png',
          ),
          RightLoginWidget(
            width: width * 0.5,
            height: height,          ),
        ],
      ),
    );
  }
}