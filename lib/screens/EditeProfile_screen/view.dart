import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customText-form.dart';

class EditeProfile_screen extends StatefulWidget {
  const EditeProfile_screen({super.key});

  @override
  State<EditeProfile_screen> createState() => _EditeProfile_screenState();
}

class _EditeProfile_screenState extends State<EditeProfile_screen> {
  String? imagepath;
  int? selectedV;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/arrow-left (1).svg'),
                  SizedBox(
                    width: 66.5.w,
                  ),
                  Text(
                    'Personal Details',
                    style: TextStyle(
                        fontFamily: 'sfm',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Center(
                child: Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    // image: DecorationImage(
                    //   image: FileImage(File(imagepath!)),
                    //   fit: BoxFit.cover,
                    // ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 4.0,
                    ),
                  ),
                  child: Stack(children: [
                    imagepath != null
                        ? ClipOval(
                            child: Image.file(
                              File(
                                imagepath!,
                              ),
                              width: 100.w,
                              height: 100.h,
                              fit: BoxFit.fill,
                            ),
                          )
                        : Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Crystal_personal.svg/640px-Crystal_personal.svg.png',
                            width: 100.w,
                            height: 100.h,
                            fit: BoxFit.fill,
                          ),
                    Center(
                      child: IconButton(
                          onPressed: () async {
                            // ignore: invalid_use_of_visible_for_testing_member
                            var image = await ImagePicker.platform
                                .getImage(source: ImageSource.gallery);
                            if (image != null) {
                              imagepath = image.path;
                              setState(() {});
                            }
                          },
                          icon: SvgPicture.asset('assets/icons/camera.svg')),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Center(
                child: TextButton(
                    onPressed: () async {
                      // ignore: invalid_use_of_visible_for_testing_member
                      var image = await ImagePicker.platform
                          .getImage(source: ImageSource.gallery);
                      if (image != null) {
                        imagepath = image.path;
                        setState(() {});
                      }
                    },
                    child: Text(
                      'Change  Photo',
                      style: TextStyle(
                          color: Color(0xff3366FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'fsm'),
                    )),
              ),
              SizedBox(
                height: 25.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  customform(hintText: 'Rafif Dian Axelingga'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Bio',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  customform(hintText: 'Senior UI/UX Designer'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  customform(hintText: 'Ranjingan, Wangon, Wasington City'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'No.Handphone',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  SizedBox(
                    height: 57,
                    child: customform(
                      hintText: '01090887848',
                      prefix: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: selectedV,
                            hint: Image.asset('assets/images/FLAG.png',
                                width: 24.w, height: 18.h),
                            items: [
                              DropdownMenuItem(
                                child: Image.asset(
                                  'assets/images/England.png',
                                  width: 24.w,
                                  height: 18.h,
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Image.asset('assets/images/FLAG.png',
                                    width: 24.w, height: 18.h),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Image.asset('assets/images/France.png',
                                    width: 24.w, height: 18.h),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Image.asset('assets/images/Germany.png',
                                    width: 24.w, height: 18.h),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Image.asset('assets/images/Portugal.png',
                                    width: 24.w, height: 18.h),
                                value: 5,
                              ),
                              DropdownMenuItem(
                                child: Image.asset(
                                    'assets/images/Saudi Arabia.png',
                                    width: 24.w,
                                    height: 18.h),
                                value: 6,
                              ),
                            ],
                            onChanged: (value) {
                              selectedV = value;
                              setState(() {
                                selectedV = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 83.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButtom(
                        text: 'Save',
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
