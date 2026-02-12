import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200.0),
              Text(
                'Body Health Calculator App',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                
              ),
              
              SizedBox(height: 40.0),
        
              Image.asset(
                'assets/images/calculator.png',
                width: 130.0,
                height: 130.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 40.0),
              Text(
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                'คำนวนค่า BMI'
                ),
              Text(
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                'คำนวนค่าเเคลลอรี่ที่ร่างกายต้องการ BMR'
                ),
                SizedBox(height: 120.0),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/47/Logosau-02.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0),
                Text(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  'Developed by Pakhawat Guy',
                ),
            ],
            
          ),
        ),
      ),
    );
  }
}