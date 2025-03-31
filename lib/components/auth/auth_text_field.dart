import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscure;

  const AuthTextField({
    super.key,
    required this.controller,
    this.hintText = 'Type here...',
    this.obscure = false,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    final double dimension = 55.0;
    return Container(
      height: dimension,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscure,
        style: TextStyle(
          fontSize: 25,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 25,
            color: Colors.grey[500],
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            )
          ),
        ),
      ),
    );
  }
}
