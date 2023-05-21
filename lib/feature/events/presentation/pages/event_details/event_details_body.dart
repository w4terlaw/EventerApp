import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/constants.dart';
import '../../../../../common/localization.dart';
import '../../../../../common/widgets/button_widgets.dart';
import '../../../../../common/widgets/loading_widget.dart';
import '../../../../../common/widgets/skeleton_widgets.dart';
import '../../../../../common/widgets/space_widgets.dart';
import '../../../../user/data/models/event.dart' as model;
import '../../../data/models/event_dates_checkbox.dart';
import '../../bloc/event_booking/event_booking_bloc.dart';
import '../../bloc/get_event_bloc/get_event_bloc.dart';
import 'components/about_event.dart';
import 'components/event_dates_list.dart';
import 'components/event_dates_select_checkbox.dart';
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
      pinned: true,
      stretch: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/favorite.png',
            color: AppColors.whiteColor,
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
              placeholder: (context, url) => const SkeletonImage(),
            ),
          ],
        ),
      ),
    );
  }
}

const _maxHeaderExtent = 95.0;

class _HeaderSliver extends SliverPersistentHeaderDelegate {
  final String eventName;

  _HeaderSliver(this.eventName);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // final percent = shrinkOffset / _maxHeaderExtent;
    return Container(
      width: double.infinity,
      padding: MyPadding.padding(top: 16),
      height: _maxHeaderExtent.h,
      color: Colors.white,
      child: Text(
        eventName,
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: AppColors.mainTextColor, fontWeight: FontWeight.normal),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _maxHeaderExtent.h;

  @override
  // TODO: implement minExtent
  double get minExtent => _maxHeaderExtent.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class EventDetailsPageBody extends StatelessWidget {
  const EventDetailsPageBody({Key? key}) : super(key: key);

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
  final model.Event event;

  Details({required this.event, Key? key}) : super(key: key);

  final EventDatesCheckbox _eventDatesCheckbox = EventDatesCheckbox();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _FlexibleSpaceBarHeader(
                eventPhoto: event.venues[0].photos[0], eventName: event.name),
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
                    EventDatesList(eventDates: event.eventDates),
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
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white.withOpacity(0.2), Colors.white],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  final state = context.watch<EventBookingBloc>().state;
                  final bloc = context.watch<EventBookingBloc>();

                  return MyElevatedButton(
                    padding: 60,
                    widget: Text(L10n.getTicket,
                        style: Theme.of(context).textTheme.labelLarge),
                    onPressed: (state is EventBookingSuccess)
                        ? null
                        : () {
                            _showModal(context, bloc, state);
                          },
                  );
                })
                // final bloc = context.watch<EventBookingBloc>();
                ,
              ],
            ),
          ),
        ),
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return NestedScrollView(
  //     headerSliverBuilder: (context, innerBoxIsScrolled) {
  //       return [
  //         SliverAppBar(
  //           expandedHeight: 250,
  //           pinned: true,
  //           elevation: 0,
  //           backgroundColor: Colors.white,
  //           leading: TextButton(
  //             child: CircleAvatar(
  //               backgroundColor: Colors.white,
  //               child: Image.asset(
  //                 'assets/icons/arrow-left.png',
  //                 color: AppColors.mainTextColor,
  //                 scale: 20,
  //               ),
  //             ),
  //             onPressed: () => Navigator.pop(context),
  //           ),
  //           actions: [
  //             ClipRRect(
  //               borderRadius: BorderRadius.circular(100),
  //               child: TextButton(
  //                 onPressed: () {},
  //                 child: CircleAvatar(
  //                   backgroundColor: Colors.white,
  //                   child: Image.asset(
  //                     'assets/icons/favorite.png',
  //                     color: AppColors.mainTextColor,
  //                     scale: 20,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //           flexibleSpace: FlexibleSpaceBar(
  //             background: CachedNetworkImage(
  //               imageUrl: event.venues[0].photos[0],
  //               fit: BoxFit.cover,
  //               placeholder: (context, url) => const SkeletonImage(),
  //             ),
  //           ),
  //         ),
  //         SliverPersistentHeader(
  //           delegate: _HeaderSliver(event.name),
  //           pinned: true,
  //         )
  //       ];
  //     },
  //     body: Stack(
  //       children: [
  //         SingleChildScrollView(
  //           physics: const BouncingScrollPhysics(),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               // const VerticalSpace(24),
  //               // Padding(
  //               //   padding: MyPadding.LR_24,
  //               //   child: Text(
  //               //     event.name,
  //               //     style: Theme.of(context).textTheme.headlineLarge!.copyWith(
  //               //         color: AppColors.mainTextColor,
  //               //         fontWeight: FontWeight.normal),
  //               //   ),
  //               // ),
  //               // const VerticalSpace(24),
  //               EventDatesList(eventDates: event.eventDates),
  //               const VerticalSpace(24),
  //               VenuesEventList(venues: event.venues),
  //               const VerticalSpace(24),
  //               Padding(
  //                 padding: MyPadding.LR_24,
  //                 child: Column(
  //                   children: [
  //                     OrganizerHeader(organizer: event.organizer),
  //                     const VerticalSpace(24),
  //                     AboutEvent(description: event.description),
  //                     const VerticalSpace(100),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //         Align(
  //           alignment: AlignmentDirectional.bottomEnd,
  //           child: Container(
  //             width: double.infinity,
  //             height: 100,
  //             decoration: BoxDecoration(
  //               gradient: LinearGradient(
  //                 begin: Alignment.topCenter,
  //                 end: Alignment.bottomCenter,
  //                 colors: [Colors.white.withOpacity(0.2), Colors.white],
  //               ),
  //             ),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Builder(builder: (context) {
  //                   final state = context.watch<EventBookingBloc>().state;
  //                   final bloc = context.watch<EventBookingBloc>();
  //
  //                   return MyElevatedButton(
  //                     padding: 45,
  //                     widget: Text(L10n.getTicket,
  //                         style: Theme.of(context).textTheme.labelLarge),
  //                     onPressed: (state is EventBookingSuccess)
  //                         ? null
  //                         : () {
  //                             _showModal(context, bloc, state);
  //                           },
  //                   );
  //                 })
  //                 // final bloc = context.watch<EventBookingBloc>();
  //                 ,
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  _showModal(
      BuildContext context, EventBookingBloc bloc, EventBookingState state) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 5,
                      width: 50,
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
              const VerticalSpace(12),
              Text(
                'Дата и время',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              EventDatesSelectCheckbox(
                eventDates: event.eventDates,
                eventDatesCheckbox: _eventDatesCheckbox,
              ),
              const VerticalSpace(24),
              Row(
                children: [
                  Expanded(
                    child: MyOutlinedButton(
                      padding: 0,
                      widget: Text(
                        L10n.cancel,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: AppColors.mainTextColor),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const HorizontalSpace(20),
                  Expanded(
                    flex: 2,
                    child: MyElevatedButton(
                      padding: 0,
                      widget: (state is EventBookingLoading)
                          ? const MyLoadingWidget(
                              size: 30,
                            )
                          : Text(L10n.confirm,
                              style: Theme.of(context).textTheme.labelLarge),
                      onPressed: (state is EventBookingLoading)
                          ? null
                          : () {
                              bloc.add(
                                EventBookingEvent.eventBooking(
                                  eventId: event.id,
                                  eventDates: _eventDatesCheckbox,
                                ),
                              );
                            },
                    ),
                  ),
                ],
              ),
              const VerticalSpace(20),
            ],
          ),
        );
      },
    );
  }
}
