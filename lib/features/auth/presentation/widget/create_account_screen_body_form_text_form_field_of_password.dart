import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/register_bloc/register_bloc.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/text_form_field_of_password_.dart';

class CreateAccountScreenBodyFormTextFormFieldOfPassword
    extends StatefulWidget {
  const CreateAccountScreenBodyFormTextFormFieldOfPassword({
    super.key,
  });

  @override
  State<CreateAccountScreenBodyFormTextFormFieldOfPassword> createState() =>
      _CreateAccountScreenBodyFormTextFormFieldOfPasswordState();
}

class _CreateAccountScreenBodyFormTextFormFieldOfPasswordState
    extends State<CreateAccountScreenBodyFormTextFormFieldOfPassword> {
  String? password;
  bool changeHelperStyleColor = false;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<RegisterBloc>(context).password = password;

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
