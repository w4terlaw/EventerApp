import 'package:eventer_app/app.dart';
import 'package:eventer_app/feature/presentation/bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'package:eventer_app/feature/presentation/widgets/event_card_widgets.dart';
import 'package:eventer_app/feature/presentation/widgets/search_widget.dart';
import 'package:eventer_app/feature/presentation/widgets/skeleton_widgets.dart';
import 'package:eventer_app/feature/presentation/widgets/space_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchEventPageBody extends StatelessWidget {
  const SearchEventPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetListEventsBloc>().state;
    return Column(
      children: [
        MySearchWidget(
          onSubmitted: (value) {
            context
                .read<GetListEventsBloc>()
                .add(EventsEvent.fetch(page: 1, name: value));
          },
        ),
        Expanded(
          child: state.when(
              loading: () => const SkeletonEventCompactCard(),
              loaded: (events) {
                // return const SkeletonEventCompactCard();
                return RefreshIndicator(
                  onRefresh: () {
                    context.read<GetListEventsBloc>().add(
                      const EventsEvent.fetch(page: 1, name: ''),
                    );
                    return Future.value();
                  },
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (_, index) => const VerticalSpace(16.0),
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                        child: GestureDetector(
                          onTap: () {
                            final int id = event.id;
                            navigatorKey.currentState?.pushNamed('/event_details', arguments: id);
                            // Navigator.pushNamed(context, '/event_details', arguments: id);
                          },
                          child: EventCompactCard(
                            previewUrl: event.venues[0].photos[1],
                            name: event.name,
                            startDateTime: event.eventDates[0].startDateTime,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              error: (message) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(message),
                      TextButton(
                        onPressed: () => context.read<GetListEventsBloc>().add(
                          const EventsEvent.fetch(page: 1, name: ''),
                        ),
                        child: const Text('Попробовать ещё раз'),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

}


