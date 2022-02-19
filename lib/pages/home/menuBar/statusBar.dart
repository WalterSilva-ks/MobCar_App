// ignore_for_file: file_names

import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:mobicar/constants/colors.dart';
import 'package:mobicar/constants/icons.dart';
import 'package:mobicar/pages/home/menuBar/buttonMenu.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          splashColor: Colors.transparent,
          onPressed: () => Navigator.push(
              context,
              PageTransition(
                  duration: Duration(milliseconds: 300),
                  type: PageTransitionType.rightToLeft,
                  child: const ButtonMenu())),
          icon:
              Image.asset(iconMenu, width: 25, height: 25, fit: BoxFit.contain),
        ),
      ],
      backgroundColor: Colors.black,
      title: Column(
        children: [
          Image.asset(
            logoMarca,
            width: 60,
            height: 45,
          ),
          const Text(
            "MOBCAR",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w300),
          ),
          const Padding(padding: EdgeInsets.all(04))
        ],
      ),
    );
  }
}
