import 'package:flutter/material.dart';

import '/common/app_colors.dart';

const double borderSideWidth = 1.2;
final BorderRadius borderRadius = BorderRadius.circular(12);

class MyInputField extends StatelessWidget {
  final String hintText;
  final String prefixIcon;
  final bool obscureText;

  const MyInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: IconButton(
              icon: Image.asset(
                prefixIcon,
                width: 22.0,
              ),
              onPressed: null,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              width: borderSideWidth,
              color: AppColors.secondaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              width: borderSideWidth,
              color: AppColors.inputBorderColor,
            ),
          ),
        ),
        style: const TextStyle(
          color: AppColors.mainTextColor,
        ),
      ),
    );
  }
}

class MyInputPasswordField extends StatefulWidget {
  final String hintText;
  final String prefixIcon;
  final String suffixIcon;

  const MyInputPasswordField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
  });

  @override
  State<MyInputPasswordField> createState() => _MyInputPasswordFieldState();
}

class _MyInputPasswordFieldState extends State<MyInputPasswordField> {
  bool _hidePass = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextField(
        obscureText: _hidePass,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 6),
            child: IconButton(
              icon: Image.asset(
                widget.suffixIcon,
                width: 22.0,
              ),
              onPressed: () {
                setState(() {
                  _hidePass = !_hidePass;
                });
              },
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: IconButton(
              icon: Image.asset(
                widget.prefixIcon,
                width: 22.0,
              ),
              onPressed: null,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              width: borderSideWidth,
              color: AppColors.secondaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              width: borderSideWidth,
              color: AppColors.inputBorderColor,
            ),
          ),
        ),
        style: const TextStyle(
          color: AppColors.mainTextColor,
        ),
      ),
    );
  }
}
