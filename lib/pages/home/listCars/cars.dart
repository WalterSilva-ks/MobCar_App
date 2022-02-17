// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:mobicar/constants/colors.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 5),
        itemCount: 100,
        itemBuilder: (BuildContext context, index) {
          return ElevatedButton(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Informações LongPress"),
                    content: const Text("Mostrar info car"),
                    actions: <Widget>[
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Seleção de carro"),
                    content: const Text("Mostrar info"),
                    actions: <Widget>[
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/carroExemplo.jpeg',
                          height: 65,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Title',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Year',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            padding: EdgeInsets.zero,
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          print("view tocada");
                        },
                        child: const Text(
                          'View More',
                          style: TextStyle(
                            fontSize: 11,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 231,
                  ),
                  PopupMenuButton(
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Colors.black,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text("View"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text("Edit"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text("Delete"),
                        value: 3,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
