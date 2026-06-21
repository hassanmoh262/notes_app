import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoasing = false});
  final void Function()? onTap;
  final bool isLoasing;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: isLoasing
              ? const CircularProgressIndicator(color: Colors.black)
              : const Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: KPrimaryColor,
        ),
      ),
    );
  }
}
