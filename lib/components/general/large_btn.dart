import 'package:flutter/material.dart';

class LargeBtn extends StatelessWidget {
  final icon;
  final text;
  final bgColor;
  final textColor;
  final anchor;

  const LargeBtn({
    super.key,
    required this.icon,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.anchor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(context, anchor),
      },
      child: Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            // color: Colors.deepPurpleAccent,
            color: bgColor,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Marg(
            SizedBox(
              height: 55,
              width: 55,

              child: Icon(
                icon,
                color: textColor,
                size: 28,
              ),
            ),
            // ),
            Expanded(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    // border: BoxBorder(
                    //   right: BorderSide(
                    //     color: Colors.grey,
                    //     width: 1.0,
                    //   ),
                    // ),
                  ),
                  margin: EdgeInsets.only(right: 55),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
