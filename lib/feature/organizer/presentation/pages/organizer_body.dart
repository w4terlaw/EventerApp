import 'package:flutter/material.dart';

class OrganizerPageBody extends StatelessWidget {
  const OrganizerPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          // leading: ,
        )
      ],
    );
  }
}
