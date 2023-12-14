import 'package:eventer_app/app.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/common/widgets/error_dialog_widget.dart';
import 'package:eventer_app/common/widgets/event_card_widgets.dart';
import 'package:eventer_app/common/widgets/loading_widget.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/constants.dart';
import '../../../../data/models/event/event.dart';
import '../../../bloc/get_list_events_bloc/get_list_events_bloc.dart';

class EventListHeader extends StatelessWidget {
  const EventListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyPadding.LR_24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            L10n.upcomingEvents,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          IconButton(
            onPressed: () => context
                .read<GetListEventsBloc>()
                .add(const EventsEvent.fetch(page: 1, name: '')),
            icon: const Icon(Icons.refresh_sharp),
            color: AppColors.inactiveColorNavBar,
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Text(
          //       L10n.seeAll,
          //       style: Theme
          //           .of(context)
          //           .textTheme
          //           .bodySmall!
          //           .copyWith(
          //         color: AppColors.secondaryTextColor,
          //       ),
          //     ),
          //     const Icon(
          //       Icons.arrow_right,
          //       color: AppColors.secondaryTextColor,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class EventsList extends StatelessWidget {
  const EventsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetListEventsBloc>().state;
    return state.when(
      loading: () =>
          const SizedBox(height: 260, child: Center(child: MyLoadingWidget())),
      loaded: (events) {
        return ListView.separated(
          padding: MyPadding.padding(top: 8, left: 16, right: 16, bottom: 16),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (_, index) => const VerticalSpace(16.0),
          scrollDirection: Axis.vertical,
          itemCount: events.length,
          itemBuilder: (context, index) {
            final Event event = events[index];

            final Venues venue = event.venues[0];
            final String location = '${venue.city.name}, ${venue.address} ';

            return Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: GestureDetector(
                onTap: () {
                  final int id = event.id;
                  navigatorKey.currentState?.pushNamed(
                      MyRouterConstants.eventDetailsRoute,
                      arguments: id);
                },
                child: EventLargeCard(
                  photos: event.venues[0].photos,
                  name: event.name,
                  startDateTime: event.eventDates[0].startDateTime,
                  location: location,
                  number: event.number,
                ),
              ),
            );
          },
        );
      },
      error: (failure) => Text(failure.getError())
    );
  }
}
