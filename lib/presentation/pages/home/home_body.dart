import 'package:eventer_app/presentation/bloc/events_bloc/events_bloc.dart';
// import 'package:eventer_app/presentation/pages/login/login_page.dart';
import 'package:eventer_app/presentation/widgets/event_card_widgets.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:eventer_app/presentation/widgets/search_widget.dart';
import 'package:eventer_app/presentation/widgets/skeleton_widgets.dart';
import 'package:eventer_app/presentation/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPageBody extends StatefulWidget {
  const SearchPageBody({Key? key}) : super(key: key);

  @override
  State<SearchPageBody> createState() => _SearchPageBodyState();
}

class _SearchPageBodyState extends State<SearchPageBody> {
  @override
  void initState() {
    context.read<EventsBloc>().add(const EventsEvent.fetch(page: 1, name: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EventsBloc>().state;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 16.0, top: 16.0),
          child: MySearchWidget(
            onSubmitted: (value) {
              context
                  .read<EventsBloc>()
                  .add(EventsEvent.fetch(page: 1, name: value));
            },
          ),
        ),
        Expanded(
          child: state.when(loading: () {
            return const SkeletonEventCompactCard();
          }, loaded: (events) {
            // return const SkeletonEventCompactCard();
            return RefreshIndicator(
              onRefresh: () {
                context.read<EventsBloc>().add(
                  const EventsEvent.fetch(page: 1, name: ''),
                );
                return Future.value();
              },
              child: ListView.separated(
                separatorBuilder: (_, index) => const VerticalSpace(16.0),
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: EventCompactCard(
                      previewUrl: event.venues[0].photos[1],
                      name: event.name,
                      startDateTime: event.eventDates[0].startDateTime,
                    ),
                  );
                },
              ),
            );
          }, error: (message) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(message),
                  TextButton(
                    onPressed: () => context.read<EventsBloc>().add(
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
