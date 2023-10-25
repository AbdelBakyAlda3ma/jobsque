import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/presentation/widgets/chatting_app_bar.dart';

@RoutePage()
class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ChattingAppBar(),
        body: Container(),
      ),
    );
  }
}
