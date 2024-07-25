import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Core/helpers/extentions.dart';
import 'package:newapp/Core/theming/style.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
     return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                 Navigator.pushNamed(context, Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}