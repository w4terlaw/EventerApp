import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/feature/events/presentation/pages/event_details/components/bottom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/constants.dart';
import '../../../../../common/widgets/error_dialog_widget.dart';
import '../../../../../common/widgets/loading_widget.dart';
import '../../../../../common/widgets/skeleton_widgets.dart';
import '../../../../../common/widgets/space_widgets.dart';
import '../../../../user/data/models/event.dart' as model;
import '../../bloc/get_event_bloc/get_event_bloc.dart';
import 'components/about_event.dart';
import 'components/event_dates_list.dart';
import 'components/organizer_header.dart';
import 'components/venues_event_list.dart';

class _FlexibleSpaceBarHeader extends StatelessWidget {
  final String eventPhoto;
  final String eventName;

  const _FlexibleSpaceBarHeader(
      {Key? key, required this.eventPhoto, required this.eventName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const BackButton(color: AppColors.mainTextColor),
      pinned: true,
      stretch: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/favorite.png',
            color: AppColors.mainTextColor,
            width: 20,
          ),
        ),
      ],
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        // centerTitle: true,
        collapseMode: CollapseMode.pin,
        stretchModes: const [StretchMode.zoomBackground, StretchMode.fadeTitle],
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: eventPhoto,
              fit: BoxFit.cover,
              placeholder: (context, url) => const MySkeletonImage(),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailsPageBody extends StatelessWidget {
  final int eventId;

  const EventDetailsPageBody({Key? key, required this.eventId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetEventBloc>().state;
    return state.when(
      loading: () => const Center(child: MyLoadingWidget()),
      loaded: (event) => Details(event: event),
      error: (failure) => ErrorDialog(
        failure: failure,
        onPressed: () => context
            .read<GetEventBloc>()
            .add(GetEventEvent.byId(eventId: eventId)),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final model.Event event;

  const Details({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _FlexibleSpaceBarHeader(
              eventPhoto: event.venues[0].photos[0],
              eventName: event.name,
            ),
            // SliverPersistentHeader(
            //     delegate: _HeaderSliver(event.name), pinned: true),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpace(24),
                    Padding(
                      padding: MyPadding.LR_24,
                      child: Text(
                        event.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                color: AppColors.mainTextColor,
                                fontWeight: FontWeight.normal),
                      ),
                    ),
                    const VerticalSpace(24),
                    EventDatesList(eventDates: [event.eventDates[0]]),
                    const VerticalSpace(24),
                    VenuesEventList(venues: event.venues),
                    const VerticalSpace(24),
                    Padding(
                      padding: MyPadding.LR_24,
                      child: Column(
                        children: [
                          OrganizerHeader(organizer: event.organizer),
                          const VerticalSpace(24),
                          AboutEvent(description: event.description),
                          const VerticalSpace(100),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        BottomButtons(event: event),
      ],
    );
  }
}
