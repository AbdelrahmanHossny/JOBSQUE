import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splah_screen extends StatelessWidget {
  const splah_screen({super.key});

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
            child:
                FlipInX(child: SvgPicture.asset('assets/icons/Logo (1).svg')))
      ]),
    );
  }
}
