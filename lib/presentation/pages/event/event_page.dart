import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/presentation/pages/event/event_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetailPage extends StatelessWidget {
  final int id;

  const EventDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrapper(id: id),
    );
  }
}

class Wrapper extends StatelessWidget {
  final int id;

  const Wrapper({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetEventBloc(getEventUsecase: sl())
            ..add(GetEventEvent.byId(id: id)),
        ),
      ],
      child: const EventBody(),
    );
  }
}
