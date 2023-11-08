import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_image_bloc/get_profile_image_bloc.dart';
import '../../../../core/utils/global/app_images.dart';

class ProfileAvatar extends StatelessWidget {
  final double imageRadius = 45;
  final double heightOfColoredContainer = 110;

  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileImageBloc, GetProfileImageState>(
      builder: (context, state) {
        if (state is GetProfileImageSuccess) {
          return Positioned(
            top: heightOfColoredContainer - imageRadius,
            left: MediaQuery.sizeOf(context).width / 2 - imageRadius,
            child: CircleAvatar(
              radius: imageRadius,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 43,
                backgroundImage: FileImage(
                  File(
                    state.imagePath,
                  ),
                ),
              ),
            ),
          );
        } else {
          return Positioned(
            top: heightOfColoredContainer - imageRadius,
            left: MediaQuery.sizeOf(context).width / 2 - imageRadius,
            child: CircleAvatar(
              radius: imageRadius,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 43,
                backgroundImage: AssetImage(
                  AppImages.defaultProfileImage,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
