import 'package:flutter/material.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                'HOME',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'NEW ARRIVAL',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'SHOP',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'LAST COLLECTION',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'MEN',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'WOMEN',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
