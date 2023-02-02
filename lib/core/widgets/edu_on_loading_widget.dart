import 'package:flutter/material.dart';

class EduOnLoadingWidget extends StatelessWidget {
  const EduOnLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}
