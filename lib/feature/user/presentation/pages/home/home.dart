import 'package:eventer_app/service/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetListEventsBloc(
            getEventsUseCase: sl(),
          )..add(const EventsEvent.fetch(page: 1, name: '')),
        ),
      ],
      child: const HomePageBody(),
    );
  }
}
