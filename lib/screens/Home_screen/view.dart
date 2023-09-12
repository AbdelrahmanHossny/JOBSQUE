import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/screens/Home_screen/applied.dart';
import 'package:jobsque/screens/Home_screen/home.dart';
import 'package:jobsque/screens/Home_screen/message.dart';
import 'package:jobsque/screens/Home_screen/profile.dart';
import 'package:jobsque/screens/Home_screen/saved.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List<Widget> pages = [
    home_page(),
    message_page(),
    applied_page(),
    saved_page(),
    profile_page()
  ];
  int currentpages = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpages],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentpages,
            selectedItemColor: Color(0xff3366FF),
            backgroundColor: Colors.transparent,
            elevation: 0,
            unselectedItemColor: Color(0xff9CA3AF),
            onTap: (value) {
              setState(() {
                currentpages = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(currentpages == 0
                      ? 'assets/icons/home(1).svg'
                      : 'assets/icons/home.svg'),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(currentpages == 1
                      ? 'assets/icons/message(1).svg'
                      : 'assets/icons/message.svg'),
                  label: 'Messages'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(currentpages == 2
                      ? 'assets/icons/briefcase (1).svg'
                      : 'assets/icons/briefcase.svg'),
                  label: 'Applied'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(currentpages == 3
                      ? 'assets/icons/archive-minus (1).svg'
                      : 'assets/icons/archive-minus.svg'),
                  label: 'Saved'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(currentpages == 4
                      ? 'assets/icons/profile (2).svg'
                      : 'assets/icons/profile (1).svg'),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
