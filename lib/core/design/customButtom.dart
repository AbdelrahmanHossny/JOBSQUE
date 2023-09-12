import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const CustomButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff3366FF),
            fixedSize: Size.fromHeight(48),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ));
  }
}
