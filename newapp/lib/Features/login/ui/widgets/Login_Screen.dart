import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/style.dart';
import 'package:newapp/Core/widgets/app_text_button.dart';
import 'package:newapp/Core/widgets/app_text_form_field.dart';
import 'package:newapp/Features/login/ui/widgets/Icons_google_fb_apple.dart';
import 'package:newapp/Features/login/ui/widgets/already_have_acc_tec=xt.dart';
import 'package:newapp/Features/login/ui/widgets/divider.dart';
import 'package:newapp/Features/login/ui/widgets/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24bluebold,
                ),
                verticalspace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14greyRegular,
                ),
                verticalspace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalspace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      verticalspace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13blueRegular,
                        ),
                      ),
                      verticalspace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16whitesemibold,
                        onPressed: () {},
                      ),
                      verticalspace(60),
                      const divider(),
                      verticalspace(60),
                      const Icons_google_fb_apple(),
                      verticalspace(60),
                      const TermsAndConditionsText(),
                      verticalspace(30),
                      const DontHaveAccountText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

