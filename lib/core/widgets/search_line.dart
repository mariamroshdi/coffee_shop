import 'package:flutter/material.dart';

class SearchLine extends StatelessWidget {
  const SearchLine({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                        cursorColor: Color(0xff562B1A),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffA6A6AA),
                          ),
                          filled: true,
                          fillColor: Color(0xffF8F7FA),
                          hint: Text(
                            'Search',
                            style: TextStyle(
                              color: Color(0xffCBCBD4),
                              fontSize: 16,
                            ),
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
                      );
  }
}