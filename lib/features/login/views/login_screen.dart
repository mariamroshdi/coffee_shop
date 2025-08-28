import 'package:coffee_shop_app/bottom_nav_screen.dart';
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
              fit: BoxFit.fill,
              image: Svg('assets/svgs/login.svg'),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FractionallySizedBox(
                  widthFactor: 3/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back!',
                        style: GoogleFonts.raleway(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0A191E),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Login to your account.',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8F9698),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 99),
                FractionallySizedBox(
                  widthFactor: 3 / 4,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: false,
                      hint: Text(
                        'Username',
                        style: TextStyle(color: Colors.brown[900]),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0xffB29F91),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xff562B1A),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 99),
                FractionallySizedBox(
                  widthFactor: 3 / 4,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: false,
                      hint: Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.brown[900]),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0xffB29F91),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xff562B1A),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 77),
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffCB8A58), Color(0xff562B1A)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => BottomNavScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors. transparent,
                      ),
                    child: Text('Login',
                     style: GoogleFonts.lato(
                      textStyle: TextStyle(fontSize: 18, color: Colors.white)
                     )),
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
