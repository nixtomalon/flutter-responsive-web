import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
import '../widgets/custom_card.dart';
import 'desktop.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1000,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg.jpeg'),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: 0,
                  top: 120,
                  child: Container(
                    height: 280,
                    width: size.width / 1.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pic3.jpeg'))),
                  ),
                ),
                Positioned(
                  left: 24,
                  child: Container(
                    height: 320,
                    width: 260,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pic2.jpeg'))),
                  ),
                ),
                Positioned(
                  right: 24,
                  bottom: 120,
                  child: Container(
                    height: 320,
                    width: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pic1.jpeg'))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 46, horizontal: 22),
            color: Color(0xffEBEAE8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 280),
                  width: size.width / 1.6,
                  height: 420,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/pic4.jpeg'))),
                      ),
                      Positioned(
                        bottom: 42,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            'Sweatshirts',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Container(
                  constraints: BoxConstraints(maxWidth: 280),
                  width: size.width / 1.6,
                  height: 420,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/pic4.jpeg'))),
                      ),
                      Positioned(
                        bottom: 42,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            'Hoodies',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Container(
                  constraints: BoxConstraints(maxWidth: 280),
                  width: size.width / 1.6,
                  height: 420,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/pic4.jpeg'))),
                      ),
                      Positioned(
                        bottom: 42,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            'Pair',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Text(
                    largeLabel,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CardOffMobile(),
                    CardOffMobile(),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CardOffMobile(),
                    CardOffMobile(),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CardOffMobile(),
                    CardOffMobile(),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.all(16),
            color: Color(0xffEBEAE8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(26),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                  child: Text(
                    'LOGO',
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(MaterialCommunityIcons.near_me),
                    SizedBox(width: 16),
                    Flexible(
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
                    ),
                  ],
                ),
                SizedBox(height: 22),
                Row(
                  children: [
                    Icon(Icons.phone_android),
                    SizedBox(width: 16),
                    Text('Lorem ipsum'),
                  ],
                ),
                SizedBox(height: 22),
                Row(
                  children: [
                    Icon(Icons.mail_outline),
                    SizedBox(width: 16),
                    Text('Lorem ipsum dolor'),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(Icons.facebook),
                    SizedBox(width: 12),
                    Icon(MaterialCommunityIcons.instagram),
                    SizedBox(width: 12),
                    Icon(
                      MaterialCommunityIcons.pinterest,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'COLLECTION',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'INFORMATION',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'MORE',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardOffMobile extends StatelessWidget {
  const CardOffMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 200),
      margin: EdgeInsets.all(12),
      height: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pic4.jpeg'))),
                ),
                Positioned(
                  right: -20,
                  top: 20,
                  child: Container(
                    color: Color(0xffE0CA9E),
                    child: Text(
                      '15% OFF',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            'LOREM IPSUM',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            'LOREM IPSUM',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
