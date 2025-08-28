import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  const NavButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GradientIcon(
                icon: icon,
                gradient: LinearGradient(
                  colors: [Color(0xffCB8A58), Color(0xff562B1A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              );
  }
}