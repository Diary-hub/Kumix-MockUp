// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Inputfield extends StatefulWidget {
  const Inputfield({
    super.key,
    required this.sW,
    required this.sH,
    required this.label,
    required this.obscured,
    required this.icon,
  });

  final double sW;
  final double sH;
  final String label;
  final bool obscured;
  final Icon icon;

  @override
  State<Inputfield> createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.sW * .85,
      height: widget.sH * .08,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: isFocused
            ? const Color.fromARGB(34, 186, 188, 197)
            : Colors.transparent,
        border: Border.all(
            color: isFocused
                ? Colors.transparent
                : const Color.fromARGB(22, 226, 226, 226)),
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onTap: () {
            setState(() {
              isFocused = true;
            });
          },
          onTapOutside: (value) {
            setState(() {
              isFocused = false;
            });
          },
          onSaved: (value) {
            setState(() {
              isFocused = false;
            });
          },
          onFieldSubmitted: (value) {
            setState(() {
              isFocused = false;
            });
          },
          obscureText: widget.obscured,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Rabar"),
          decoration: InputDecoration(
              prefixIcon: widget.icon,
              labelStyle: const TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: "Rabar"),
              labelText: widget.label,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
