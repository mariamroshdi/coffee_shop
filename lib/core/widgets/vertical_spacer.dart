import 'package:flutter/material.dart';

class VerticalSpacer extends StatelessWidget {
  final double height; //////dont forget double
  const VerticalSpacer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
