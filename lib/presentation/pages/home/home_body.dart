import 'package:eventer_app/presentation/bloc/events_bloc/events_bloc.dart';
import 'package:eventer_app/presentation/widgets/event_card_widgets.dart';
import 'package:eventer_app/presentation/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    context.read<EventsBloc>().add(const EventsEvent.fetch(page: 1, name: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EventsBloc>().state;
    return state.when(
      loading: () {
        return const CircularProgressIndicator();
      },
      loaded: (eventsLoaded) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
            separatorBuilder: (_, index) => const VerticalSpace(16),
            itemCount: eventsLoaded.length,
            itemBuilder: (context, index) {
              final event = eventsLoaded[index];
              return EventCompactCard(
                preview: event.venues[0].photos[0],
                name: event.name,
                startDateTime: event.eventDates[0].startDateTime,
              );
            },
          ),
        );
      },
      error: (message) => Text(message),
    );
  }
}
