import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/change_profile_image_bloc/change_profile_image_bloc.dart';

class PersonalDetailsScreenBodyChangePhotoTextButton extends StatelessWidget {
  const PersonalDetailsScreenBodyChangePhotoTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<ChangeProfileImageBloc>(context)
            .add(ChangeProfileImageEvent());
      },
      child: Text(
        'Change  Photo',
        style: CustomTextStyles.textLMedium.copyWith(
          color: AppColors.primary[500],
        ),
      ),
    );
  }
}
