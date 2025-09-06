import 'package:coffee_shop_app/core/widgets/vertical_spacer.dart';
import 'package:coffee_shop_app/features/home/views/widgets/my_grid_view.dart.dart';
import 'package:coffee_shop_app/features/home/views/widgets/top_part_home.dart';
import 'package:coffee_shop_app/models/my_product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopPartHome(),
            Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
              children: [
                _buildProductCategory(index: 0, name: '☕ COFFEE'),
                _buildProductCategory(index: 1, name: '🥞 DESSERTS'),
                _buildProductCategory(index: 4, name: '🥪 BREAKFAST'),
                _buildProductCategory(index: 2, name: '🍰 CAKE'),
                _buildProductCategory(index: 3, name: '🍵 DRINKS'),
              ],
            ),
            VerticalSpacer(height: 16),
          //Expanded(child: MyGridView(products: MyProduct.coffee))
            Expanded(child:MyGridView(
              products: (isSelected == 0)?MyProduct.coffee:
              (isSelected == 1)?MyProduct.dessert:
              ((isSelected == 2)?MyProduct.cake:
              ((isSelected == 4)?MyProduct.breackfast:MyProduct.coffee))) )
          ],
        ),
      ),
    );
  }

  _buildProductCategory({
    required int index,
    required String name,
  }) => Container(////the thing which i suppose it is a function we will use it to show the categories
    height: 30,
    decoration: BoxDecoration(
      gradient: (isSelected == index)
          ? LinearGradient(
              colors: [Color(0xffCB8A58), Color(0xff562B1A)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ) : (null),
      borderRadius: BorderRadius.circular(17),
      border: Border.all(
        color: (isSelected == index)
            ? (Colors.transparent)
            : (Color(0xff562B1A)),
      ),
    ),
    child: ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected = index;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        name,
        style: GoogleFonts.lato(
          textStyle: TextStyle(
            fontSize: 12,
            color: (isSelected == index) ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
