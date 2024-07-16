import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/widgets/app_text_form_field.dart';
import 'package:newapp/Features/login/logic/cubit/login_cubit.dart';
import 'package:newapp/Features/login/ui/widgets/paasword_validation.dart';

class EmailAndPass extends StatefulWidget {
  const EmailAndPass({super.key});

  @override
  State<EmailAndPass> createState() => _EmailAndPassState();
}

class _EmailAndPassState extends State<EmailAndPass> {
  bool isObscureText = true;
  late TextEditingController passwordController;
   bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  void initState() {
    super.initState();
    passwordController =context.read<LoginCubit>().passwordController;
    
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column( 
        children: [
         AppTextFormField(
              hintText: 'Email',
              validator: (value) {
              if (value == null ||  value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
                    verticalspace(18),
                    AppTextFormField(
                      controller: context.read()<LoginCubit>().passwordController,
                      validator: (value) {
                      if (value == null ||  value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                    },
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
                   PaaswordValidation(
                     hasLowerCase: hasLowercase,
                     hasUpperCase: hasUppercase,
                     hasSpecialCharacters: hasSpecialCharacters,
                     hasNumber: hasNumber,
                     hasMinLength: hasMinLength,
                   ),
        ],
      )
    );
  }
}