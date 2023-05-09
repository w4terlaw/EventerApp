import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/date_format.dart';
import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/data/get_list_events/models/event.dart';
import 'package:eventer_app/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:eventer_app/presentation/widgets/mini_tabs.dart';
import 'package:eventer_app/presentation/widgets/skeleton_widgets.dart';
import 'package:eventer_app/presentation/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetEventBloc>().state;
    return state.when(
        loading: () => const Center(
              child: MyLoadingWidget(),
            ),
        loaded: (event) => Details(event: event),
        error: (error) => Text(error));
  }
}

class Details extends StatelessWidget {
  final Event event;

  const Details({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.white,
            leading: TextButton(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/icons/arrow-left.png',
                  color: AppColors.mainTextColor,
                  scale: 20,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: TextButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                    'assets/icons/favorite.png',
                    color: AppColors.mainTextColor,
                    scale: 22,
                  ),),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: event.venues[0].photos[1],
                fit: BoxFit.cover,
                placeholder: (context, url) => const SkeletonImage(),
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.name,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: AppColors.mainTextColor),
              ),
              const VerticalSpace(24),
              EventDatesList(eventDates: event.eventDates),
              const VerticalSpace(24),
              VenuesEventList(venues: event.venues),
              const VerticalSpace(24),
              OrganizerHeader(organizer: event.organizer),
              const VerticalSpace(24),
              AboutEvent(description: event.description),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutEvent extends StatelessWidget {
  final String description;

  const AboutEvent({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          L10n.description,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.mainTextColor),
        ),
        const VerticalSpace(16),
        ReadMoreText(
          description,
          trimLines: 1,
          colorClickableText: AppColors.secondaryColor,
          // trimMode: TrimMode.Length,
          style: TextStyle(
            fontSize: 16.sp,
            height: 1.6,
            letterSpacing: 0,
            color: AppColors.mainTextColor,
          ),

          trimCollapsedText: L10n.show,
          trimExpandedText: L10n.hide,
        ),
      ],
    );
  }
}

class EventDatesList extends StatelessWidget {
  final List<EventDates> eventDates;

  const EventDatesList({Key? key, required this.eventDates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: eventDates.map((eventDate) {
          final String dateTime = MyDateFormat.dateTimeFormat(
              eventDate.startDateTime, MyDateFormat.tabsDateFormat);

          final String formattedRange = MyDateFormat.dateTimeFormat(
              eventDate.startDateTime, MyDateFormat.weekDayDateFormat);
          final String formattedStart = MyDateFormat.dateTimeFormat(
              eventDate.startDateTime, MyDateFormat.timeFormat);
          final String formattedEnd = MyDateFormat.dateTimeFormat(
              eventDate.endDateTime, MyDateFormat.timeFormat);

          final String timeRange =
              '$formattedRange $formattedStart - $formattedEnd';

          return Row(
            children: [
              MiniTab(
                iconPath: 'assets/icons/calendar_tab.png',
                title: dateTime,
                subTitle: timeRange,
              ),
              const HorizontalSpace(30),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class VenuesEventList extends StatelessWidget {
  final List<Venues> venues;

  const VenuesEventList({Key? key, required this.venues}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: venues.map((venue) {
          final String name = '${venue.address} - ${venue.name}';
          final String location =
              '${venue.city.state.country.name}, ${venue.city.state.name}, ${venue.city.name}';
          return Row(
            children: [
              MiniTab(
                iconPath: 'assets/icons/location.png',
                title: name,
                subTitle: location,
              ),
              const HorizontalSpace(30),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class OrganizerHeader extends StatelessWidget {
  final Organizer organizer;

  const OrganizerHeader({super.key, required this.organizer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: organizer.logo,
                  fit: BoxFit.cover,
                  height: 48.h,
                  width: 48.w,
                )),
            const HorizontalSpace(14),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(organizer.name,
                    style: Theme.of(context).textTheme.bodyMedium),
                Text(
                  L10n.organizer,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.secondaryText2Color,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 120,
          height: 28,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: AppColors.secondaryColor.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              L10n.subscribe,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
