import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/EditeProfile_screen/view.dart';
import 'package:jobsque/screens/Home_screen/view.dart';
import 'package:jobsque/screens/Language_screen/language.dart';
import 'package:jobsque/screens/Portfolio_screen/view.dart';
import 'package:jobsque/screens/SignUp_screen/view.dart';
import 'package:jobsque/screens/notification_screen/view.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            Stack(
              children: [
                Container(
                  height: 195,
                  width: 420,
                  decoration: BoxDecoration(color: Color(0xffD6E4FF)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              navigateto(context, home_screen());
                            },
                            child: SvgPicture.asset(
                                'assets/icons/arrow-left (1).svg')),
                        Text(
                          'profile_page',
                          style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                    title: Text('LogOut'),
                                    content: Text('Do you want to Logout ?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          navigateto(context, SignUp_screen(),
                                              removeuntil: false);
                                        },
                                        child: Text('Logout'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('cancel'),
                                      ),
                                    ]),
                              );
                            },
                            child: SvgPicture.asset('assets/icons/logout1.svg'))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 57),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage('assets/images/Profile.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Rafif Dian Axelingga',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Senior UI/UX Designer',
              style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 24),
            Container(
              height: 68,
              width: 340,
              decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(children: [
                Container(
                  height: 52,
                  width: 91,
                  child: Column(
                    children: [
                      Text('Applied',
                          style: TextStyle(
                              color: Color(0xff6B7280),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 8,
                      ),
                      Text('46',
                          style: TextStyle(
                              color: Color(0xfff111827),
                              fontSize: 20,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                SizedBox(width: 12),
                VerticalDivider(
                  thickness: 1,
                  color: Color(0xffD1D5DB),
                  indent: 12,
                  endIndent: 12,
                ),
                Container(
                  height: 52,
                  width: 91,
                  child: Column(
                    children: [
                      Text('Reviewed',
                          style: TextStyle(
                              color: Color(0xff6B7280),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 8,
                      ),
                      Text('23',
                          style: TextStyle(
                              color: Color(0xfff111827),
                              fontSize: 20,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                SizedBox(width: 12),
                VerticalDivider(
                  thickness: 1,
                  color: Color(0xffD1D5DB),
                  indent: 12,
                  endIndent: 12,
                ),
                Container(
                  height: 52,
                  width: 91,
                  child: Column(
                    children: [
                      Text('Contacted',
                          style: TextStyle(
                              color: Color(0xff6B7280),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 8,
                      ),
                      Text('16',
                          style: TextStyle(
                              color: Color(0xfff111827),
                              fontSize: 20,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      navigateto(context, EditeProfile_screen());
                    },
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          color: Color(0xff3366FF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'I\'m Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.',
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 0, 8),
                child: Text('General',
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              height: 36,
              width: 420,
              color: Color(0xffF4F4F5),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                navigateto(context, EditeProfile_screen());
              },
              child: ListTile(
                leading: SvgPicture.asset('assets/icons/Frame 427320627.svg'),
                title: Text('Edit Profile',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                trailing: SvgPicture.asset('assets/icons/arrow-right55.svg'),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            InkWell(
              onTap: () {
                navigateto(context, Portofolio_screen());
              },
              child: ListTile(
                  leading: SvgPicture.asset('assets/icons/Frame 427320619.svg'),
                  title: Text('Portfolio',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            InkWell(
              onTap: () {
                navigateto(context, language_screen());
              },
              child: ListTile(
                  leading:
                      SvgPicture.asset('assets/icons/Frame 427320619 (1).svg'),
                  title: Text('Langauge',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  leading:
                      SvgPicture.asset('assets/icons/Frame 427320619(3).svg'),
                  title: Text('Notification',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
                leading: Image.asset(
                  'assets/images/Frame 427320620.png',
                  cacheHeight: 40,
                  cacheWidth: 40,
                ),
                title: Text('Login and security',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 0, 8),
                child: Text('Others',
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              height: 36,
              width: 420,
              color: Color(0xffF4F4F5),
            ),
            SizedBox(height: 24),
            ListTile(
                title: Text(
                  'Accesibility',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff111827)),
                ),
                trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
                title: Text(
                  'Help Center',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff111827)),
                ),
                trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
                title: Text(
                  'Terms & Conditions',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff111827)),
                ),
                trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
                title: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff111827)),
                ),
                trailing: SvgPicture.asset('assets/icons/arrow-right55.svg')),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
          ]),
        ],
      ),
    );
  }
}
