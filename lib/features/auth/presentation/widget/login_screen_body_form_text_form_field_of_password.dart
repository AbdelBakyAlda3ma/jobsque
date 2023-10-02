import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/text_form_field_of_password_.dart';
import '../manager/blocs/login_bloc/login_bloc.dart';

class LoginScreenBodyFormTextformFieldOfPassword extends StatefulWidget {
  const LoginScreenBodyFormTextformFieldOfPassword({
    super.key,
  });

  @override
  State<LoginScreenBodyFormTextformFieldOfPassword> createState() =>
      _LoginScreenBodyFormTextformFieldOfPasswordState();
}

class _LoginScreenBodyFormTextformFieldOfPasswordState
    extends State<LoginScreenBodyFormTextformFieldOfPassword> {
  String? password;
  bool changeHelperStyleColor = false;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LoginBloc>(context).password = password;

    return TextFormFieldOfPassword(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      helperText: 'Password must be at least 8 characters',
      helperStyle: CustomTextStyles.textLRegular.copyWith(
        color: changeHelperStyleColor
            ? AppColors.success[500]
            : AppColors.neutral[400],
      ),
      validator: (value) {
        changeHelperStyleColor = true;
        if (value!.length < 8) {
          return 'Password must be at least 8 characters';
        } else {
          return null;
        }
      },
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          password = value;
        });
      },
    );
  }
}
