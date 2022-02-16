import 'package:flutter/material.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.amber),
              ),
            ],
          );
        },
      ),
    );
  }
}
