import 'package:flutter/cupertino.dart';

class VerticalSpace extends StatelessWidget {
  final double height;

  const VerticalSpace(this.height, {Key? key, required}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  final double width;

  const HorizontalSpace(this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
