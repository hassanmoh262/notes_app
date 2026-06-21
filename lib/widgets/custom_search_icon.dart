import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
