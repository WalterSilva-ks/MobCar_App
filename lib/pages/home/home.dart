import 'package:flutter/material.dart';
import 'package:mobicar/pages/home/listCars/titleCars.dart';
import 'package:mobicar/pages/home/menuBar/bottomBar.dart';
import 'package:mobicar/pages/home/menuBar/statusBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: StatusBar(),
      ),
      body: TitleCars(),
    );
  }
}
