import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'package:eventer_app/presentation/widgets/app_drawer_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'search_event_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: BlocProvider<EventsBloc>(
          create: (context) => EventsBloc(getEventsUsecase: sl()),
          child: const SearchEventPageBody(),
        ),
      ),
    );
  }
}
