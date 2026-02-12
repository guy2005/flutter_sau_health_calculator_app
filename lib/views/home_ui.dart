import 'package:flutter/material.dart';
import 'package:flutter_sau_health_calculator_app/views/about_ui.dart';
import 'package:flutter_sau_health_calculator_app/views/bmi_ui.dart';
import 'package:flutter_sau_health_calculator_app/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int barItemIndex = 1;

  List showUI = [
    BmiUi(),
    AboutUi(),
    BmrUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Body Health Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (paramvalue) {
          setState(() {
            barItemIndex = paramvalue;
          });
        },
        currentIndex: barItemIndex,
        selectedItemColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.weixin,
            ),
            label: 'BMR',
          ),
        ],
      ),
    body: showUI[barItemIndex],
    );
  }
}
