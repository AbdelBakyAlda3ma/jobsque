import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/assets_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/chatting/presentation/widgets/custom_messages_app_bar.dart';
import 'package:jobseque/features/chatting/presentation/widgets/messages_search_bar.dart';

@RoutePage()
class NotRecievedMessagesScreen extends StatelessWidget {
  const NotRecievedMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomMessagesAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const VerticalSpace(space: 8),
              const MessagesSearchBar(),
              const Spacer(
                flex: 3,
              ),
              SvgPicture.asset(AssetsImages.noMessagesRecievedBackground),
              const VerticalSpace(space: 24),
              Text(
                'You have not received any messages',
                textAlign: TextAlign.center,
                style: CustomTextStyles.h3Medium
                    .copyWith(color: AppColors.neutral[900]),
              ),
              const VerticalSpace(space: 12),
              Text(
                'Once your application has reached the interview stage, you will get a message from the recruiter.',
                textAlign: TextAlign.center,
                style: CustomTextStyles.textMRegular
                    .copyWith(color: AppColors.neutral[500]),
              ),
              const Spacer(
                flex: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
