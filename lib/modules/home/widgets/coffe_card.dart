import 'dart:ui';

import 'package:coffe_app/config/assets/image_path.dart';
import 'package:coffe_app/modules/home/views/home_view.dart';
import 'package:coffe_app/utils/basic_utils.dart';
import 'package:coffe_app/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CoffeCard extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  final double price;

  const CoffeCard({
    super.key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    final screenHeight = BasicUtils.getScreenHeight(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20 + screenWidth * 0.01),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),

      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.02,
        vertical: screenHeight * 0.01,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(coffe),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: screenWidth * 0.17,
                    height: screenHeight * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        CustomText.basic(
                          text: '4.5',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.basic(
                    text: '${name.toString()}',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),

                  CustomText.basic(
                    text: '${description.toString()}',
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),

                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' \$ ${price.toString()}',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF2F4B4E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      InkWell(
                        onTap:
                            () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeView(),
                              ),
                            ),
                        child: Container(
                          height: screenHeight * 0.045,
                          width: screenHeight * 0.045,
                          decoration: BoxDecoration(
                            color: Color(0xFFC67C4E),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
