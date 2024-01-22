import 'package:doc_appointment/Features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment/Features/signup/logic/sign_Up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class PasswordValidation extends StatefulWidget {
  const PasswordValidation({super.key});

  @override
  State<PasswordValidation> createState() => _PasswordValidationsState();
}

class _PasswordValidationsState extends State<PasswordValidation> {
  final GlobalKey<FlutterPwValidatorState> validatorKey =
      GlobalKey<FlutterPwValidatorState>();

  @override
  Widget build(BuildContext context) {
    return FlutterPwValidator(
      key: validatorKey,
      controller: context.read<SignUpCubit>().passwordController,
      minLength: 8,
      uppercaseCharCount: 1,
      lowercaseCharCount: 3,
      numericCharCount: 3,
      specialCharCount: 1,
      normalCharCount: 3,
      width: 400,
      height: 190,
      onSuccess: () {
        print("MATCHED");
      },
      onFail: () {
        print("NOT MATCHED");
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_complete_project/core/helpers/spacing.dart';
// import 'package:flutter_complete_project/core/theming/colors.dart';

// import '../../../../core/theming/styles.dart';

// class PasswordValidation extends StatelessWidget {
//   final bool hasLowerCase;
//   final bool hasUpperCase;
//   final bool hasSpecialCharacters;
//   final bool hasNumber;
//   final bool hasMinLength;
//   const PasswordValidation({
//     super.key,
//     required this.hasLowerCase,
//     required this.hasUpperCase,
//     required this.hasSpecialCharacters,
//     required this.hasNumber,
//     required this.hasMinLength,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         buildValidationRow('At least 1 lowercase letter', hasLowerCase),
//         verticalSpace(2),
//         buildValidationRow('At least 1 uppercase letter', hasUpperCase),
//         verticalSpace(2),
//         buildValidationRow(
//             'At least 1 special character', hasSpecialCharacters),
//         verticalSpace(2),
//         buildValidationRow('At least 1 number', hasNumber),
//         verticalSpace(2),
//         buildValidationRow('At least 8 characters long', hasMinLength),
//       ],
//     );
//   }

//   Widget buildValidationRow(String text, bool hasValidated) {
//     return Row(
//       children: [
//         const CircleAvatar(
//           radius: 2.5,
//           backgroundColor: ColorsManager.gray,
//         ),
//         horizontalSpace(6),
//         Text(
//           text,
//           style: TextStyles.font13DarkBlueRegular.copyWith(
//             decoration: hasValidated ? TextDecoration.lineThrough : null,
//             decorationColor: Colors.green,
//             decorationThickness: 2,
//             color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
//           ),
//         )
//       ],
//     );
//   }
// }