import 'package:flutter/material.dart';
import 'package:mobicar/config/starsEvaluate.dart';

class AddNewCar extends StatefulWidget {
  const AddNewCar({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNewCar> createState() => _AddNewCarState();
}

class _AddNewCarState extends State<AddNewCar> {
  String? dropdownValueMarca;
  String? dropdownValueModelo;
  String? dropdownValueAno;
  List<String> listMarca = ['One', 'Two', 'Free', 'Four'];
  List<String> listModelo = ['One', 'Two', 'Free', 'Four'];
  List<String> listAno = ['One', 'Two', 'Free', 'Four'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                  const Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down, size: 40),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      fillColor: Colors.white,
                    ),
                    hint: const Text("Marca"),
                    value: dropdownValueMarca,
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValueMarca = newValue.toString();
                      });
                    },
                    items: listMarca.map((location) {
                      return DropdownMenuItem(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down, size: 40),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      fillColor: Colors.white,
                    ),
                    hint: const Text("Modelo"),
                    value: dropdownValueModelo,
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValueModelo = newValue.toString();
                      });
                    },
                    items: listModelo.map((location) {
                      return DropdownMenuItem(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down, size: 40),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      fillColor: Colors.white,
                    ),
                    hint: const Text("Ano"),
                    value: dropdownValueAno,
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValueAno = newValue.toString();
                      });
                    },
                    items: listAno.map((location) {
                      return DropdownMenuItem(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Valor (R\$)",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cancelar",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            primary: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Salvar")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
