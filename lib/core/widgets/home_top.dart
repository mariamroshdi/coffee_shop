import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Color(0xff562B1A)),
                              Text(
                                'Ukraine, Ivano-Frankivsk, Konovaltsya 132',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.phone_outlined, color: Color(0xff562B1A)),
                        ],
                      );
  }
}