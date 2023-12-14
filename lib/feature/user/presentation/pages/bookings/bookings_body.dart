import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app.dart';
import '../../../../../common/constants.dart';
import '../../../../../common/date_format.dart';
import '../../../../../common/widgets/error_dialog_widget.dart';
import '../../../../../common/widgets/event_card_widgets.dart';
import '../../../../../common/widgets/loading_widget.dart';
import '../../../../../common/widgets/my_refresh_indicator.dart';
import '../../../../events/data/models/booking/booking.dart';
import '../../../../events/presentation/bloc/user_bookings_bloc/user_bookings_bloc.dart';
import '../../../data/models/event/event.dart';
import 'components/ticket_end_circles.dart';
// import '../../../data/models/event/event.dart';

class BookingsPageBody extends StatelessWidget {
  const BookingsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<UserBookingsBloc>().state;
    return MyRefreshIndicator(
      onRefresh: () => context
          .read<UserBookingsBloc>()
          .add(const UserBookingsEvent.getBookings()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: state.when(
              loading: () => const Center(child: MyLoadingWidget()),
              loaded: (bookings) => UserBookingsList(
                userBookings: bookings,
              ),
              error: (failure) => ErrorDialog(
                failure: failure,
                onPressed: () => context
                    .read<UserBookingsBloc>()
                    .add(const UserBookingsEvent.getBookings()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserBookingsList extends StatelessWidget {
  final List<Booking> userBookings;

  const UserBookingsList({Key? key, required this.userBookings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (userBookings.isEmpty)
        ? SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Center(
              child: Column(
                children: [
                  VerticalSpace(320.h),
                  Text(
                    'У вас нет билетов',
                    style: appFont(
                        textStyle: Theme.of(context).textTheme.titleMedium,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryTextColor),
                  ),
                ],
              ),
            ))
        : ListView.separated(
            separatorBuilder: (context, index) => const VerticalSpace(24),
            padding: const EdgeInsets.all(24),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: userBookings.length,
            itemBuilder: (context, index) {
              final booking = userBookings[index];
              final Venues venue = booking.event.venues[0];
              final String location = '${venue.city.name}, ${venue.address} ';
              return InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  final int id = booking.event.id;
                  navigatorKey.currentState?.pushNamed(
                      MyRouterConstants.eventDetailsRoute,
                      arguments: id);
                },
                child: ClipPath(
                  clipper: TicketEndCircles(right: 40, holeRadius: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 8),
                        ),
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: AppColors.mainTextColor,
                    ),
                    width: 300.w,
                    height: 160.h,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          booking.event.organizer.name,
                          // booking.tickets[0].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        SizedBox(
                          width: 220.w,
                          child: Text(
                            '«${booking.event.name}»',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColors.buttonColor),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color:
                                    AppColors.backgroundColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        dateTimeFormat(
                                          booking.event.eventDates[0]
                                              .startDateTime,
                                          MyDateFormat.middleCardDateFormat,
                                        ),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          booking
                                              .event.eventDates[0].endDateTime,
                                          MyDateFormat.middleCardDateFormat,
                                        ),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor),
                                      ),
                                    ],
                                  ),
                                  const HorizontalSpace(20),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Тип: ${booking.tickets[0].ticketType == "TicketTypeEnum.FREE" ? "Свободный" : "Нумерованный"}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        AppColors.whiteColor),
                                          ),
                                          Text(
                                            'Идут: ${booking.event.number}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                color:
                                                AppColors.whiteColor),
                                          )

                                          // Text(
                                          //   'Идут: ${booking.event[0].ticketType == "TicketTypeEnum.FREE" ? "Нет" : booking.tickets[0].seat.toString()}',
                                          //   style: Theme.of(context)
                                          //       .textTheme
                                          //       .labelMedium!
                                          //       .copyWith(
                                          //           color:
                                          //               AppColors.whiteColor),
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  HorizontalSpace(20.h),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
  }
}
