import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/CountryJob_screen/view.dart';

class TypeOfWork_screen extends StatefulWidget {
  const TypeOfWork_screen({super.key});

  @override
  State<TypeOfWork_screen> createState() => _TypeOfWork_screenState();
}

class _TypeOfWork_screenState extends State<TypeOfWork_screen> {
  int Select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(children: [
          SizedBox(
            height: 20.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What type of work are you interested in?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Tell us what you,re interested in so we can customise the app for your needs.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff737379)),
              ),
            ],
          ),
          SizedBox(
            height: 36.h,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                childAspectRatio: 156.w / 125.h),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                print(index.toString());
                setState(() {
                  Select = index;
                });
              },
              child: Container(
                padding: EdgeInsets.only(left: 14),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Select == index
                            ? Color(0xff3366FF)
                            : Color(0xffD1D5DB)),
                    color: Select == index
                        ? Color(0xff3366FF).withOpacity(.4)
                        : Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFFFFF),
                          child: SvgPicture.asset(image[index],
                              color: Color(0xff3366FF)),
                        ),
                      ),
                      Text(
                        name[index],
                        style: TextStyle(color: Color(0xff111827)),
                      )
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 66.h,
          ),
          CustomButtom(
            text: 'Next',
            onPressed: () {
              navigateto(context, ContryJob_screeen());
            },
          )
        ]),
      ),
    );
  }
}

List<String> name = [
  'UI/UX Designer',
  'Ilustrator Designer',
  'Developer',
  'Management',
  'Information Technology',
  'Research and Analytics'
];
List<String> image = [
  'assets/icons/Vector.svg',
  'assets/icons/Ilustrator Category1111.svg',
  'assets/icons/Developer Category.svg',
  'assets/icons/Management Category.svg',
  'assets/icons/Information technology category.svg',
  'assets/icons/Research and Analytics category (1).svg',
];
