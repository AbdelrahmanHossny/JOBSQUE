import 'package:flutter/material.dart';

void navigateto(BuildContext context, Widget page,
    {removeuntil = true, replacement = false}) {
  replacement
      ? Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (BuildContext context) => page))
      : Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => page),
          (route) => removeuntil,
        );
}
