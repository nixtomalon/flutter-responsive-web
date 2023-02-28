import 'package:flutter/material.dart';

AppBar mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.grey),
        onPressed: () => key.currentState?.openDrawer(),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Container(
        padding: EdgeInsets.all(14),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xffD9D9D9)),
        child: Text(
          'LOGO',
          style: TextStyle(fontSize: 16),
        ),
      ),
      actions: [
        Icon(
          Icons.shop_outlined,
          color: Colors.black,
        ),
        SizedBox(width: 12),
        Icon(
          Icons.star_outline,
          color: Colors.black,
        ),
        SizedBox(width: 12),
      ],
    );
