import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0,top: 30.0),
      child:SingleChildScrollView(
       child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xff562B1A),),
                    Text('Ukraine, Ivano-Frankivsk, Konovaltsya 132',style: TextStyle(fontSize:12, fontWeight: FontWeight.bold),)
                  ],
                ), 
                Icon(Icons.phone_outlined, color: Color(0xff562B1A),)
              ],
            ),
            SizedBox(height: 17,),
            TextField(
              cursorColor: Color(0xff562B1A),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Color(0xffA6A6AA),),
                      filled: true,
                      fillColor: Color(0xffF8F7FA),
                      hint: Text(
                        'Search',
                        style: TextStyle(color: Color(0xffCBCBD4),fontSize: 16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0xff627281),
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
                  SizedBox(height: 27,),
                  Row(children: [Text('Categories',style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),textAlign: TextAlign.left,)],),
                  SizedBox(height: 17,),
          ],
        )  
       )
       ),
      ) ,
      )
    );
  }
}