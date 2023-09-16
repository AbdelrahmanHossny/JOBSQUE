import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customform extends StatefulWidget {
  final String hintText;
  final Widget? prefix;
  final Widget? suffix;
  const customform(
      {super.key, required this.hintText, this.prefix, this.suffix});

  @override
  State<customform> createState() => _customformState();
}

class _customformState extends State<customform> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      child: TextFormField(
        cursorColor: Color(0xff3366FF),
        decoration: InputDecoration(
          suffixIcon: widget.suffix,
          prefixIcon: widget.prefix,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color(0xff1F2937),
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffD1D5DB),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3366FF), width: 1),
            borderRadius: BorderRadius.circular(8.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
