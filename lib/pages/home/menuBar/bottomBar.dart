// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mobicar/constants/colors.dart';
import 'package:mobicar/constants/icons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconBottomBar,
            height: 20,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          const Text(
            '2020. All rights reserved to Mobcar.',
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
