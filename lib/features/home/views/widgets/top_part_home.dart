import 'package:coffee_shop_app/core/widgets/home_top.dart';
import 'package:coffee_shop_app/core/widgets/search_line.dart';
import 'package:coffee_shop_app/core/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';

class TopPartHome extends StatelessWidget {
  const TopPartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      HomeTop(),
                      VerticalSpacer(height: 17),
                      SearchLine(),
                      VerticalSpacer(height: 27),
                      Row(
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      VerticalSpacer(height: 17),
                    ],
                  ),
                ),
              ),
            );
  }
}