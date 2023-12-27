import 'package:flutter/material.dart';
import 'ui_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildUi(), //split logic of ui
      ),
    );
  }
}










