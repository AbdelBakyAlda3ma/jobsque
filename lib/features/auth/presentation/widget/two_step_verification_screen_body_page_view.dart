import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_add_phone_number_body.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_enter_pin_code_body.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_initial_body.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_select_verification_method_body.dart';

class TwoStepVerificationScreenBodyPageView extends StatefulWidget {
  const TwoStepVerificationScreenBodyPageView({
    super.key,
  });

  @override
  State<TwoStepVerificationScreenBodyPageView> createState() =>
      _TwoStepVerificationScreenBodyPageViewState();
}

class _TwoStepVerificationScreenBodyPageViewState
    extends State<TwoStepVerificationScreenBodyPageView> {
  late PageController controller;
  int currentIndex = 0;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String _buttonText() {
    switch (currentIndex) {
      case 2:
        return 'Send Code';
      case 3:
        return 'Verify';
    }
    return 'Next';
  }

  var listOfScreenBodies = [
    const TwoStepVerificationInitialBody(),
    const TwoStepVerificationSelectVerificationMethodBody(),
    const TwoStepVerificationAddPhoneNumberBody(),
    const TwoStepVerificationEnterPinCodeBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: listOfScreenBodies,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: PrimaryButton.large(
              onPressed: () {
                if (controller.hasClients) {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                }
                if (currentIndex == listOfScreenBodies.length - 1) {
                  context.router.pop();
                }
              },
              text: _buttonText(),
            ),
          ),
        ],
      ),
    );
  }
}
