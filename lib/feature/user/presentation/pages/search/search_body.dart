import 'package:eventer_app/app.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/common/widgets/event_card_widgets.dart';
import 'package:eventer_app/common/widgets/search_widget.dart';
import 'package:eventer_app/common/widgets/skeleton_widgets.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/error_dialog_widget.dart';
import '../../../../user/presentation/bloc/get_list_events_bloc/get_list_events_bloc.dart';

class SearchEventPageBody extends StatelessWidget {
  const SearchEventPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetListEventsBloc>().state;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 3, bottom: 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 10,
                  // offset: const Offset(0, 8),
                ),
              ],
            ),
            child: MySearchWidget(
              onSubmitted: (value) {
                context
                    .read<GetListEventsBloc>()
                    .add(EventsEvent.fetch(page: 1, name: value));
              },
            ),
          ),
        ),
        const VerticalSpace(24),
        Expanded(
          child: state.when(
            loading: () => const MySkeletonEventCompactCard(),
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
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          final int id = event.id;
                          navigatorKey.currentState?.pushNamed(
                              MyRouterConstants.eventDetailsRoute,
                              arguments: id);
                        },
                        child: EventCompactCard(
                          previewUrl: event.venues[0].photos[0],
                          name: event.name,
                          startDateTime: event.eventDates[0].startDateTime,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            error: (failure) => ErrorDialog(
              failure: failure,
              onPressed: () => context.read<GetListEventsBloc>().add(
                    const EventsEvent.fetch(page: 1, name: ''),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
