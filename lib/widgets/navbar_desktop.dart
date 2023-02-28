import 'package:flutter/material.dart';
import 'package:web_sample/constants/style.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({super.key});

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(size.width, 1000),
      child: Stack(
        //  alignment: Alignment.topCenter,
        children: [
          Positioned(
            right: 22,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Help', style: kTextStyle),
                  SizedBox(width: 12),
                  Text('|', style: kTextStyle),
                  SizedBox(width: 12),
                  Text('Join Us', style: kTextStyle),
                  SizedBox(width: 12),
                  Text('|', style: kTextStyle),
                  SizedBox(width: 12),
                  Text('Sign in', style: kTextStyle),
                ],
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
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
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(26),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                    child: Text(
                      'LOGO',
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'HOME',
                          style: kTextStyle,
                        ),
                        SizedBox(width: 22),
                        Text(
                          'NEW ARRIVAL',
                          style: kTextStyle,
                        ),
                        SizedBox(width: 22),
                        Text(
                          'SHOP',
                          style: kTextStyle,
                        ),
                        SizedBox(width: 22),
                        Text(
                          'LAST COLLECTION',
                          style: kTextStyle,
                        ),
                        SizedBox(width: 22),
                        Text(
                          'MEN',
                          style: kTextStyle,
                        ),
                        SizedBox(width: 18),
                        Text(
                          'WOMEN',
                          style: kTextStyle,
                        ),
                        SizedBox(width: 22),
                        SizedBox(
                          width: 140,
                          height: 32,
                          child: TextField(
                            decoration: kTextFieldDecoration.copyWith(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              hintText: 'Search',
                              fillColor: Color(0xffE4E4E4),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE4E4E4), width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffE4E4E4), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        Icon(
                          Icons.shop_outlined,
                        ),
                        SizedBox(width: 18),
                        Icon(
                          Icons.star_border_outlined,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
