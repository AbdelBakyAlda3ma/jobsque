import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/presentation/widgets/chatting_app_bar.dart';

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
