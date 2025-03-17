// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '/utils/general/tap_sound.dart';

class LargeBtn extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color bgColor;
  final Color textColor;
  final String anchor;

  const LargeBtn({
    super.key,
    required this.icon,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.anchor,
  });

  @override
  State<LargeBtn> createState() => _LargeBtnState();
}

class _LargeBtnState extends State<LargeBtn> {

  Future<void> _navigateContent() async {
    try {
      TapSound.playTapSound();
      if (mounted) {
        Navigator.pushNamed(context, widget.anchor);
      }
    } catch (e) {
      // Fallback if audio fails - still navigate
      if (mounted) {
        Navigator.pushNamed(context, widget.anchor);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _navigateContent,
      child: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: widget.bgColor,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            // Marg(
            SizedBox(
              height: 70,
              width: 70,
              child: Icon(
                widget.icon,
                color: widget.textColor,
                size: 32,
              ),
            ),
            // ),
            Expanded(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(),
                  margin: EdgeInsets.only(right: 55),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
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
