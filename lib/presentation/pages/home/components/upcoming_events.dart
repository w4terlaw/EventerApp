import 'package:eventer_app/presentation/widgets/error_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/localization.dart';
import '../../../../data/get_list_events/models/event.dart';
import '../../../bloc/get_list_events_bloc/get_list_events_bloc.dart';
import '../../../widgets/event_card_widgets.dart';
import '../../../widgets/skeleton_widgets.dart';
import '../../../widgets/space_widgets.dart';

class UpcomingEventsList extends StatelessWidget {
  const UpcomingEventsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetListEventsBloc>().state;
    return state.when(
      loading: () =>
          const SizedBox(height: 260, child: SkeletonEventCompactCard()),
      loaded: (events) {
        return Column(
          children: <Widget>[
            const VerticalSpace(40),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    L10n.upcomingEvents,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        L10n.seeAll,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.secondaryTextColor,
                            ),
                      ),
                      const Icon(
                        Icons.arrow_right,
                        color: AppColors.secondaryTextColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const VerticalSpace(10),
            SizedBox(
              height: 270,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final Event event = events[index];

                  final Venues venue = event.venues[0];
                  final String location =
                      '${venue.city.name}, ${venue.address} ';

                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        final int id = event.id;
                        navigatorKey.currentState
                            ?.pushNamed('/event_details', arguments: id);
                      },
                      child: EventHomeMiddleCard(
                        previewUrl: event.venues[0].photos[1],
                        name: event.name,
                        startDateTime: event.eventDates[0].startDateTime,
                        location: location,
                        number: 20,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
      error: (message) => ErrorDialog(
        error: message,
        onPressed: () {
          context.read<GetListEventsBloc>().add(
                const EventsEvent.fetch(page: 1, name: ''),
              );
        },
      ),
    );
  }
}
