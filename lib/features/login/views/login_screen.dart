import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Svg('assets/svgs/login.svg'),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome back!',
                  style: GoogleFonts.raleway(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0A191E)
                  ),
                ),
                SizedBox(height: 7,),
                Text('Login to your account.',
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8F9698)
                  ),),
                SizedBox(height:99,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hint: Text('username',style:TextStyle(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)
                    ),
                  focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 2,))
                  ),
                ),
                SizedBox(height:99,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hint: Text('username',style:TextStyle(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)
                    ),
                  focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 2,))
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
