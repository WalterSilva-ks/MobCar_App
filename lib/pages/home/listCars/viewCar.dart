import 'package:flutter/material.dart';
import 'package:mobicar/config/starsEvaluate.dart';

class ViewCar extends StatelessWidget {
  const ViewCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.directions_car,
                          color: Colors.black,
                        ),
                        Text('Title', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Text("X",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/icons/carroExemplo.jpeg',
                        fit: BoxFit.cover,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: StarsEvaluate(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Marca: ", style: TextStyle(fontSize: 15)),
                      Text("Ano: ", style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Modelo: ", style: TextStyle(fontSize: 15)),
                      Text("Valor: ", style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Reservar")),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
