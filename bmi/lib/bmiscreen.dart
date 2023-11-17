import 'package:flutter/material.dart';
class bmicalculator extends StatefulWidget {
  const bmicalculator({super.key});

  @override
  State<bmicalculator> createState() => _bmicalculatorState();
}

class _bmicalculatorState extends State<bmicalculator> {
  final TextEditingController _height=TextEditingController();
  final TextEditingController _weight=TextEditingController();
  double bmi=0;
  void bmicalculate(){
    double Height=double.parse(_height.text)/100;
    double Weight=double.parse(_weight.text);
    double Heightsquare=Height*Height;
    bmi=Weight/Heightsquare;
    print(bmi);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR"),backgroundColor:Colors.black),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _height,
      decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.pink),
        hintText: "height in cm",
        icon: Icon(Icons.trending_up,color: Colors.pink,),
    )),
          TextField(
            controller: _weight,
            decoration: InputDecoration(
    hintStyle: TextStyle(color: Colors.black38),
    hintText: "weight in kg",icon: Icon(Icons.menu,color: Colors.black38,),),
            ),
          ElevatedButton(onPressed:() {setState(() {
            bmicalculate();
          });}, child: Text("calculate")),
          Text(bmi.toStringAsFixed(2),)
        ],
      ),
    );

  }
}
