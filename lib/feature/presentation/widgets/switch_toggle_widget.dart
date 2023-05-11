import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '/common/app_colors.dart';

class MySwitchToggle extends StatefulWidget {
  final Function(bool) onToggle;

  const MySwitchToggle({Key? key, required this.onToggle}) : super(key: key);

  @override
  State<MySwitchToggle> createState() => _MySwitchToggleState();
}

class _MySwitchToggleState extends State<MySwitchToggle> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      activeColor: AppColors.secondaryColor,
      width: 40.0,
      height: 24.0,
      valueFontSize: 14.0,
      toggleSize: 19.0,
      value: status,
      inactiveColor: AppColors.inputBorderColor,
      padding: 2.5,
      onToggle: (val) {
        setState(() {
          status = val;
        });
        widget.onToggle(val); // вызов колбэк функции
      },
    );
  }
}
