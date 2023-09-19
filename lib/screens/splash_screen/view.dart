import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/onboarding_screen/view.dart';

class splah_screen extends StatefulWidget {
  const splah_screen({super.key});

  @override
  State<splah_screen> createState() => _splah_screenState();
}

class _splah_screenState extends State<splah_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      navigateto(context, onboarding_screen(), removeuntil: false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/Blur.png',
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
            child: FlipInX(
                duration: Duration(seconds: 3),
                child: SvgPicture.asset('assets/icons/Logo (1).svg')))
      ]),
    );
  }
}
