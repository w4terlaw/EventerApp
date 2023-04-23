import 'package:eventer_app/presentation/bloc/events_bloc/events_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../locator_service.dart';
import '/data/events_get_main_info/repository/events_repository.dart';
import 'body.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<EventsBloc>(
          create: (context) => EventsBloc(usecaseGetEvents: sl()),
          child: HomeBody(),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Search"),
    //   ),
    //   body: Container(
    //     padding: const EdgeInsets.all(24),
    //     child: Column(
    //       children: [
    //         EventCompactCard(
    //           name:
    //               'A virtual evening of smooth jazzssssssssssssssss ssssssssss',
    //           startDateTime: DateTime.now(),
    //           preview: 'https://i.imgur.com/NjC8d48.png',
    //         ),
    //         const VerticalSpace(16),
    //         EventMiddleCard(
    //           name: 'Jo Malone London’s Mother’s Day Presents',
    //           startDateTime: DateTime.now(),
    //           preview: 'https://i.imgur.com/NjC8d48.png',
    //           location: 'Radius Gallery • Santa Cruz, CA',
    //         ),
    //         const VerticalSpace(16),
    //         EventLargeCard(
    //           name: 'Jo Malone London’s Mother’s Day Presents',
    //           startDateTime: DateTime.now(),
    //           preview: 'https://i.imgur.com/6k1odM7.png',
    //           location: 'Radius Gallery • Santa Cruz, CA',
    //           numberMembers: 20,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
