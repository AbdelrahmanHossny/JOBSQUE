import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class switchs extends StatefulWidget {
  final String title;
  const switchs({super.key, required this.title});

  @override
  State<switchs> createState() => _switchsState();
}

class _switchsState extends State<switchs> {
  bool issclect = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 24, right: 24, bottom: 20.5, top: 20.5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        FlutterSwitch(
          height: 26.0,
          width: 48.0,
          padding: 4.0,
          toggleSize: 15.0,
          borderRadius: 100,
          activeColor: Color(0xff3366FF),
          value: issclect,
          onToggle: (value) {
            setState(() {
              issclect = value;
            });
          },
        )
      ]),
    );
  }
}
