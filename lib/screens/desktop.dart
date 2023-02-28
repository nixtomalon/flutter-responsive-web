import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:web_sample/constants/constants.dart';

import '../widgets/custom_card.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1000,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/bg.jpeg'),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 230,
                  child: Container(
                    height: 480,
                    width: 380,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pic1.jpeg'))),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 200,
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 600),
                    height: 520,
                    width: size.width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pic3.jpeg'))),
                  ),
                ),
                Positioned(
                  left: 360,
                  child: Container(
                    height: 500,
                    width: 380,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pic2.jpeg'))),
                  ),
                ),
                Positioned(
                  bottom: 200,
                  child: Container(
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
                  ),
                )
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1920),
            height: 1000,
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 46, horizontal: 22),
            color: Color(0xffEBEAE8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 520,
                  child: Row(
                    children: [
                      CustomCard(
                        btnLabel: 'Sweatshirts',
                        src: 'assets/images/pic4.jpeg',
                      ),
                      CustomCard(
                        btnLabel: 'Hoodies',
                        src: 'assets/images/pic2.jpeg',
                      ),
                      CustomCard(
                        btnLabel: 'Pair',
                        src: 'assets/images/pic4.jpeg',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Text(
                  largeLabel,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1920),
            height: 1000,
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 28, horizontal: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    CardOffDesktop(),
                    CardOffDesktop(),
                    CardOffDesktop(),
                    CardOffDesktop(),
                  ],
                ),
                Row(
                  children: [
                    CardOffDesktop(),
                    CardOffDesktop(),
                    CardOffDesktop(),
                    CardOffDesktop(),
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
            color: Color(0xffEBEAE8),
            padding: EdgeInsets.all(32),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width / 2,
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
                      )
                    ],
                  ),
                ),
                DetailsCard(title: 'COLLECTION'),
                SizedBox(width: 12),
                DetailsCard(title: 'INFORMATION'),
                SizedBox(width: 12),
                DetailsCard(title: 'MORE'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  const DetailsCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Lorem ipsum',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 16),
          Text(
            'Lorem ipsum',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 16),
          Text(
            'Lorem ipsum',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 16),
          Text(
            'Lorem ipsum',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class CardOffDesktop extends StatelessWidget {
  const CardOffDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(16),
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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'LOREM IPSUM',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
