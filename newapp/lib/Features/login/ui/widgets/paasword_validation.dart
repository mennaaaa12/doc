import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/style.dart';

class PaaswordValidation extends StatelessWidget {
  const PaaswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalspace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalspace(2),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        verticalspace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalspace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorManger.grey,
        ),
        horizontalspace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              color: hasValidated ? ColorManger.grey : ColorManger.darkBlue,
              decorationColor: Colors.green,
              decorationThickness: 2),
        )
      ],
    );
  }
}
