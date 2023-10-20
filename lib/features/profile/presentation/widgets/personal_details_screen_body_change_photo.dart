import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/change_profile_image_bloc/change_profile_image_bloc.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_details_screen_body_change_photo_text_button.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'personal_details_profile_avatar.dart';

class PersonalDetailsScreenBodyChangePhoto extends StatefulWidget {
  const PersonalDetailsScreenBodyChangePhoto({
    super.key,
  });

  @override
  State<PersonalDetailsScreenBodyChangePhoto> createState() =>
      _PersonalDetailsScreenBodyChangePhotoState();
}

class _PersonalDetailsScreenBodyChangePhotoState
    extends State<PersonalDetailsScreenBodyChangePhoto> {
  String? avatarImagePath;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeProfileImageBloc, ChangeProfileImageState>(
        listener: (context, state) {
      if (state is ChangeProfileImageSuccess) {
        avatarImagePath = state.profileImage;
      }
      if (state is ChangeProfileImageFailure) {
        showErrorSnackBar(
          context: context,
          message: state.errorMsg,
        );
      }
    }, builder: (context, state) {
      return Column(
        children: [
          PersonalDetailsProfileAvatar(
            imagePath: avatarImagePath,
          ),
          const VerticalSpace(space: 8),
          const PersonalDetailsScreenBodyChangePhotoTextButton(),
        ],
      );
    });
  }
}
