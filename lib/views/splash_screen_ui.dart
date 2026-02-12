
import 'package:flutter/material.dart';
import 'package:flutter_sau_health_calculator_app/views/home_ui.dart';
 
class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});
 
  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}
 
class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    //โค้ดหน่วงเวลา
    Future.delayed(
      //ระบะเวลาฃ่วงเวลา
      Duration(seconds: 3),
      //ครบเวลาทำอะไร
      () {
        //เปิดหน้ิา Homui แบบย้อนกลับไม่ได้
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
        );
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/calculator.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Body Health',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
 