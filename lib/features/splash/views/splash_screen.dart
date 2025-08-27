
import 'package:coffee_shop_app/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState(); 
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 10),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeScreen()));
    });
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[ Color(0xff562B1A), Color(0xffCB8A58)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(
          child: Lottie.asset('assets/svgs/Coffee love.json',
          width: 150,
          height: 150,
          ),
          ),
        ],
      ),
      ),
    );
  }
}
