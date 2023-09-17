import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customStepper.dart';

class JobStepper_screen extends StatefulWidget {
  const JobStepper_screen({super.key});

  @override
  State<JobStepper_screen> createState() => _JobStepper_screenState();
}

class _JobStepper_screenState extends State<JobStepper_screen> {
  int _cuurentindex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/arrow-left (1).svg'),
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  'Apply Job',
                  style: TextStyle(
                      fontFamily: 'sfm',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 34.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  customStepper(
                    currentIndex: _cuurentindex,
                    index: 0,
                    onTap: () {
                      setState(() {
                        _cuurentindex = 0;
                        print(_cuurentindex);
                      });
                    },
                  ),
                  customStepper(
                    currentIndex: _cuurentindex,
                    index: 1,
                    onTap: () {
                      setState(() {
                        _cuurentindex = 1;
                        print(_cuurentindex);
                      });
                    },
                  ),
                  customStepper(
                    islast: true,
                    currentIndex: _cuurentindex,
                    index: 2,
                    onTap: () {
                      setState(() {
                        _cuurentindex = 2;
                        print(_cuurentindex);
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            _cuurentindex == 0
                ? Text('0')
                : _cuurentindex == 1
                    ? Text('1')
                    : Text('2')
          ]),
        ),
      ),
    );
  }
}
