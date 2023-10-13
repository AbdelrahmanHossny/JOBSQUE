import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomForm extends StatefulWidget {
  final TextInputType keyboardType;
  final String icon;
  final String hint;
  final bool isvis;
  final bool isvalid;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomForm({
    super.key,
    required this.keyboardType,
    required this.icon,
    required this.hint,
    required this.isvis,
    required this.isvalid,
    required this.controller,
    required this.obscureText,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  late bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.isvalid
          ? (Text) {
              if (Text!.length < 5) {
                return 'Password must be at least 8 characters';
              }
              return null;
            }
          : null,
      cursorColor: Color(0xff3366FF),
      obscureText: obscureText,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xffFFFFFF),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SvgPicture.asset(
            widget.icon,
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 20.w,
          minHeight: 20.w,
        ),
        suffixIcon: widget.isvis
            ? SizedBox()
            : Padding(
                padding: const EdgeInsets.only(right: 18),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: obscureText
                      ? Icon(Icons.visibility_off, color: Color(0xff9CA3AF))
                      : Icon(Icons.visibility, color: Color(0xff9CA3AF)),
                ),
              ),
        suffixIconConstraints: BoxConstraints(maxWidth: 50.w, maxHeight: 50.h),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: Color(0xff9CA3AF),
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
      ),
    );
  }
}
