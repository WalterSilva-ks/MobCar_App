// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mobicar/constants/colors.dart';
import 'package:mobicar/constants/icons.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            iconMenu,
            width: 100,
            height: 100,
          ),
        )
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
