import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD6E4FF),
        elevation: 0,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 60),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              'assets/images/arrow-left.png',
              cacheHeight: 24,
              cacheWidth: 24,
            ),
            Text(
              'profile_page',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Image.asset(
              'assets/images/logout.png',
              cacheHeight: 24,
              cacheWidth: 24,
            )
          ]),
        ),
      ),
      body: ListView(
        children: [
          Column(children: [
            Stack(
              children: [
                Container(
                  height: 111,
                  width: 420,
                  decoration: BoxDecoration(color: Color(0xffD6E4FF)),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 57),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/Profile.png'),
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
                  Text(
                    'Edit',
                    style: TextStyle(
                        color: Color(0xff3366FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
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
            ListTile(
              leading: Image.asset(
                'assets/images/Frame 427320627.png',
                cacheHeight: 40,
                cacheWidth: 40,
              ),
              title: Text('Edit Profile',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/Frame 427320619.png',
                cacheHeight: 40,
                cacheWidth: 40,
              ),
              title: Text('Portfolio',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/Frame 427320619 (1).png',
                cacheHeight: 40,
                cacheWidth: 40,
              ),
              title: Text('Langauge',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xffE5E7EB),
              indent: 24,
              endIndent: 24,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/Frame 427320619 (2).png',
                cacheHeight: 40,
                cacheWidth: 40,
              ),
              title: Text('Notification',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
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
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
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
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
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
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
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
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
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
              trailing: Image.asset(
                'assets/images/arrow-right1.png',
                cacheHeight: 16,
                cacheWidth: 16,
              ),
            ),
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
