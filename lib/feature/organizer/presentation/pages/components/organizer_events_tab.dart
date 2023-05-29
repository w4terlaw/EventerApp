import 'package:eventer_app/common/widgets/error_dialog_widget.dart';
import 'package:eventer_app/feature/organizer/presentation/bloc/get_organizer_events_bloc/get_organizer_events_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app.dart';
import '../../../../../common/widgets/event_card_widgets.dart';
import '../../../../../common/widgets/skeleton_widgets.dart';
import '../../../../../common/widgets/space_widgets.dart';

class OrganizerEventsTab extends StatelessWidget {
  final int organizerId;

  const OrganizerEventsTab({Key? key, required this.organizerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetOrganizerEventsBloc>().state;
    return state.when(
      loading: () => const MySkeletonEventCompactCard(
        padding: EdgeInsets.only(top: 24),
      ),
      loaded: (events) {
        return ListView.separated(
          padding: const EdgeInsets.only(top: 24),
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
                  navigatorKey.currentState
                      ?.pushNamed('/event_details', arguments: id);
                  // Navigator.pushNamed(context, '/event_details', arguments: id);
                },
                child: EventCompactCard(
                  previewUrl: event.venues[0].photos[0],
                  name: event.name,
                  startDateTime: event.eventDates[0].startDateTime,
                ),
              ),
            );
          },
        );
      },
      error: (failure) => ErrorDialog(
        failure: failure,
        onPressed: () => context.read<GetOrganizerEventsBloc>().add(
              GetOrganizerEventsEvent.getEvents(
                page: 1,
                organizerId: organizerId,
              ),
            ),
      ),
    );
  }
}
