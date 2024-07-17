import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/style.dart';
import 'package:newapp/Core/widgets/app_text_button.dart';
import 'package:newapp/Features/login/ui/widgets/terms_and_conditions.dart';
import 'package:newapp/Features/sign_up.dart/Ui/widgets/already_have_acc_text.dart';
import 'package:newapp/Features/sign_up.dart/Ui/widgets/sign_up_block_listener.dart';
import 'package:newapp/Features/sign_up.dart/Ui/widgets/sign_up_form.dart';
import 'package:newapp/Features/sign_up.dart/logic/sign_up_cubit.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalspace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalspace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalspace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalspace(16),
                    const TermsAndConditionsText(),
                    verticalspace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}