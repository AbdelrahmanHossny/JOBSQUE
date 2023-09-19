import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/Home_screen/view.dart';

class notification_screen extends StatefulWidget {
  const notification_screen({super.key});

  @override
  State<notification_screen> createState() => _notification_screenState();
}

class _notification_screenState extends State<notification_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    navigateto(context, home_screen());
                  },
                  child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
              SizedBox(
                width: 88.w,
              ),
              Text(
                'Notification',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfm'),
              )
            ],
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 300, 8),
            child: Text(
              'New',
              style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          height: 36,
          width: 420,
          decoration: BoxDecoration(color: Color(0xffE5E7EB)),
        ),
        SizedBox(
          height: 21,
        ),
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
                  leading: Image.asset(
                    image[index],
                    cacheHeight: 40,
                    cacheWidth: 40,
                  ),
                  title: Text(
                    'Dana',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Posted new design jobs',
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color(0xffDBB40E),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('10.00AM',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w500))
                  ]),
                ),
            separatorBuilder: (context, index) => Container(
                  width: 327.w,
                  height: 2,
                  color: Color(0xffE5E7EB),
                ),
            itemCount: 4),
        SizedBox(
          height: 47.h,
        ),
      ]),
    );
  }
}

List<String> image = [
  'assets/images/Dana Logo.png',
  'assets/images/Shoope Logo.png',
  'assets/images/Slack Logo.png',
  'assets/images/Facebook Logo.png'
];
