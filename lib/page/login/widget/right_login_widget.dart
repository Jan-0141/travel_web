import 'package:flutter/material.dart';
import 'package:travel_web/theme/app_theme.dart';

import '../../../app_routes.dart';
import '../../create_user/create_user_page.dart';
import '../../../theme/app_colors.dart';
import '../../../widget/buttom_widget.dart';
import '../../../widget/textfile.dart';

class RightLoginWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const RightLoginWidget({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login Please', style: Theme.of(context).textTheme.headlineLarge),
          SizedBox(height: 16),
          TextFieldWidget(
            label: 'Username',
            hint: 'Enter your username',
          ),
          SizedBox(height: 16),
          TextFieldWidget(
            label: 'Password',
            hint: 'Enter your password',
            obscureText: true,
          ),
          SizedBox(height: 16),
          ButtonWidget(
            width: 400,
            text: 'Login',
            onPressed: () {
              // Handle login action
            },
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // Handle forgot password action
                },
                child: Text('Forgot Password?',style: Theme.of(context).textTheme.bodySmall!.copyWith(decoration: TextDecoration.underline,),),
              ),
              SizedBox(width: 50),
              TextButton(
                onPressed: () =>  Navigator.pushNamed(context, AppRoutes.createuser),//CreteUserPage(),
                // {
                //   CreteUserPage();
                // },
                child: Text('Create Account',style: Theme.of(context).textTheme.bodySmall!.copyWith(decoration: TextDecoration.underline,),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}