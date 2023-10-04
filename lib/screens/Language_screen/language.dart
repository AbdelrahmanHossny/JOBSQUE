import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/Home_screen/view.dart';

class language_screen extends StatefulWidget {
  const language_screen({super.key});

  @override
  State<language_screen> createState() => _language_screenState();
}

class _language_screenState extends State<language_screen> {
  late int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, top: 16),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      navigateto(context, home_screen());
                    },
                    child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                SizedBox(
                  width: 95.5.w,
                ),
                Text(
                  'Language',
                  style: TextStyle(
                      fontFamily: 'sfm',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      print(index);
                      setState(() {
                        _value = index;
                      });
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                flage[index],
                                width: 30.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                title[index],
                                style: TextStyle(
                                    fontFamily: 'sfm',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Transform.scale(
                            scale: 1.2,
                            child: Radio(
                              activeColor: Color(0xff3366FF),
                              value: index,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = index;
                                });
                              },
                            ),
                          )
                        ]),
                  ),
              separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: Color(0xffE5E7EB),
                    indent: 24,
                    endIndent: 24,
                  ),
              itemCount: 10),
        )
      ]),
    );
  }
}

List<String> title = [
  'English',
  'Indonesia',
  'Arabic',
  'Chinese',
  'Dutch',
  'French',
  'German',
  'Japanese',
  'Korean',
  'Portuguese'
];
List<String> flage = [
  'assets/images/England.png',
  'assets/images/Indonesia.png',
  'assets/images/Saudi Arabia.png',
  'assets/images/China.png',
  'assets/images/Netherlands.png',
  'assets/images/France.png',
  'assets/images/Germany.png',
  'assets/images/Japan.png',
  'assets/images/South Korea.png',
  'assets/images/Portugal.png',
];
