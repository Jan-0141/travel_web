import 'package:flutter/material.dart';
import 'package:travel_web/theme/app_theme.dart';

import '../../../theme/app_colors.dart';
import '../../../widget/buttom_widget.dart';
import '../../../widget/buttom_with_image_widget.dart';
import '../../../widget/textfile.dart';

class RightCreateUserWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const RightCreateUserWidget({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Create your accout', style: Theme.of(context).textTheme.headlineLarge),
          SizedBox(height: 16),
          TextFieldWidget(
            label: 'Full Name',
            hint: 'Enter your Full Name',
          ),
          SizedBox(height: 16),
          TextFieldWidget(
            label: 'Email',
            hint: 'Enter your Email',
            obscureText: true,
          ),
          SizedBox(height: 16),
          TextFieldWidget(
            label: 'Password',
            hint: 'Enter your Password',
            obscureText: true,
          ),
          SizedBox(height: 16),
          ButtonWidget(
            width: 400,
            text: 'Create Account',
            onPressed: () {
              // Handle login action
            },
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Text('aready have an account', style: Theme.of(context).textTheme.bodyMedium,),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('login',style: Theme.of(context).textTheme.bodySmall!.copyWith(decoration: TextDecoration.underline,),),
              ),
            ],
          ),
           SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              ButtonWithImageWidget(
                width: 180,
                text: 'Google',
                imagePath: 'asset/images/google.png',
                onPressed: () {
                  // Handle forgot password action
                },
              ),
               SizedBox(width: 20),
              ButtonWithImageWidget(
                width: 180,
                text: 'GitHub',
                imagePath: 'asset/images/github.png',
                onPressed: () {
                  // Handle forgot password action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}