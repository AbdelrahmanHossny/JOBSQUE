import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/design/customButtom.dart';

class ContryJob_screeen extends StatefulWidget {
  const ContryJob_screeen({super.key});

  @override
  State<ContryJob_screeen> createState() => _ContryJob_screeenState();
}

class _ContryJob_screeenState extends State<ContryJob_screeen>
    with SingleTickerProviderStateMixin {
  late TabController tapcontroller;
  bool issclected = true;
  int tag = 1;
  List<String> tags = [];
  List<String> options = [
    'United States',
    'Malaysia',
    'Singapore',
    'Indonesia',
    'Philiphines',
    'Polandia',
    'India',
    'Vietnam',
    'China',
    'Canada',
    'Saudi Arabia',
    'Argentina',
    'Brazil',
  ];
  @override
  void initState() {
    tapcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tapcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Where are you prefefred \nLocation?',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Let us know, where is the work location you \nwant at this time, so we can adjust it.',
            style: TextStyle(
                color: Color(0xff737379),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 32.h,
          ),
          Container(
            alignment: Alignment.center,
            width: 327.w,
            height: 46.h,
            decoration: BoxDecoration(
              color: Color(0xffF4F4F5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(children: [
              TabBar(
                  indicator: BoxDecoration(
                      color: Color(0xff091A7A),
                      borderRadius: BorderRadius.circular(100)),
                  labelColor: Color(0xffFFFFFF),
                  unselectedLabelColor: Color(0xff6B7280),
                  controller: tapcontroller,
                  tabs: [
                    Tab(
                      text: 'Work From Office',
                    ),
                    Tab(
                      text: 'Remote Work',
                    )
                  ]),
            ]),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Select the country you want for your job',
            style: TextStyle(
                color: Color(0xff737379),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              ChipsChoice<String>.multiple(
                value: tags,
                onChanged: (value) => setState(() => tags = value),
                choiceItems: C2Choice.listFrom(
                    source: options, value: (i, v) => v, label: (i, v) => v),
                choiceCheckmark: true,
                textDirection: TextDirection.ltr,
                wrapped: true,
              )
            ],
          ),
          SizedBox(
            height: 180.h,
          ),
          CustomButtom(
            text: 'Next',
            onPressed: () {},
          )
        ]),
      ),
    );
  }
}
