import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/Core/helpers/extentions.dart';
import 'package:newapp/Core/routing/routes.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/style.dart';
import 'package:newapp/Features/login/logic/cubit/login_cubit.dart';
import 'package:newapp/Features/login/logic/cubit/login_state.dart';

class LoginBlockListener extends StatelessWidget {
  const LoginBlockListener({super.key});

 
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:(previous, current) {
      return  current is Loading || current is Error || current is Success;
      },
      listener: (context, state) {
        // TODO: implement listener
        state.whenOrNull(
          loading: () {
            showDialog(context: context, builder: (context) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorManger.mainblue,
                ),
              );
            });

        },
            failure: (error) {
            context.pop();
            setupErrorState(context, error);
        },
        success: (LoginResponse) {
        context.pop();
        context.pushNamed(Routes.homeScreen);
        }


        );
      },
      child: SizedBox.shrink(),
    );
  }
  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
