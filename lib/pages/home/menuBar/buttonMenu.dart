import 'package:flutter/material.dart';
import 'package:mobicar/constants/colors.dart';
import 'package:mobicar/constants/icons.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/icons/imgMenu.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  splashColor: Colors.transparent,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset(iconMenu,
                      width: 25, height: 25, fit: BoxFit.contain),
                ),
              ],
              backgroundColor: Colors.transparent,
              title: Column(
                children: [
                  Image.asset(
                    logoMarca,
                    width: 60,
                    height: 45,
                  ),
                  const Text(
                    "MOBCAR",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.w300),
                  ),
                  const Padding(padding: EdgeInsets.all(04))
                ],
              ),
            ),
            Text('data')
          ],
        ));
  }
}
