import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String btnLabel;
  final String src;
  const CustomCard({
    super.key,
    required this.btnLabel,
    required this.src,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(src))),
        ),
        Positioned(
          bottom: 42,
          child: Container(
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
              btnLabel,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
