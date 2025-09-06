import 'package:coffee_shop_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool pressed = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(7),
        height: 175,
        width: 143,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffBFBDC0), width: 0.5),
        ),
        child: Column(
          children: [
            Container(
              height: 99,
              width: 129,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.product.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      pressed = !pressed; //not pressed != pressed 😭
                    });
                  },
                  icon: Icon(
                    pressed ? Icons.favorite : Icons.favorite_border_outlined,
                    color: pressed ? Colors.red : Colors.white,
                    size: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                            color:isSelected? Color(0xff846046): Colors.transparent,
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              color: (isSelected)
                                  ? (Colors.transparent)
                                  : (Color(0xff562B1A)),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Text(
                              "L",
                              style: TextStyle(
                                fontSize: 10,
                                color: (isSelected)
                                    ? Colors.white
                                    : Color(0xff562B1A),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1,),
                        Container(
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                            color:isSelected? Color(0xff846046): Colors.transparent,
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              color: (isSelected)
                                  ? (Colors.transparent)
                                  : (Color(0xff562B1A)),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Text(
                              "M",
                              style: TextStyle(
                                fontSize: 10,
                                color: (isSelected)
                                    ? Colors.white
                                    : Color(0xff562B1A),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1,),
                        Container(
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                            color:isSelected? Color(0xff846046): Colors.transparent,
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              color: (isSelected)
                                  ? (Colors.transparent)
                                  : (Color(0xff562B1A)),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Text(
                              "S",
                              style: TextStyle(
                                fontSize: 10,
                                color: (isSelected)
                                    ? Colors.white
                                    : Color(0xff562B1A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}