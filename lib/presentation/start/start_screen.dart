import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  // 앱 이름
  Widget _buildAppName() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // 타이틀
  Widget _buildTitle() => SizedBox(
    width: double.infinity,
    child: Text(
      'Get Started with\nTracking Your Health!',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  // 설명
  Widget _buildDescription() {
    return SizedBox(
      width: double.infinity,
      child: Text(
        'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
        textAlign: TextAlign.left,
        style: TextStyle(color: Color(0xFFC6C3f9), fontSize: 15),
      ),
    );
  }

  // 시작 버튼
  Widget _buildStartButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                SizedBox(height: 60),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                _buildTitle(),
                SizedBox(height: 15),
                _buildDescription(),
                SizedBox(height: 40),
                _buildStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
