import 'package:flutter/material.dart';

class EduOnErrorWidget extends StatelessWidget {
  final String errorMessage;
  const EduOnErrorWidget({super.key,required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}
