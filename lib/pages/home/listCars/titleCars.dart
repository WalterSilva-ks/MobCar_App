// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mobicar/pages/home/listCars/cars.dart';

class TitleCars extends StatelessWidget {
  const TitleCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Text(
              "Title 1",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Container(
            child: Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Text(
                    'Title 2',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 75,
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Add new",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
          const Cars(),
        ],
      ),
    );
  }
}
