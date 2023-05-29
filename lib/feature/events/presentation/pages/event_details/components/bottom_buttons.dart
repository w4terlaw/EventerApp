import 'package:eventer_app/common/my_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../../../common/constants.dart';
import '../../../../../../common/localization.dart';
import '../../../../../../common/widgets/button_widgets.dart';
import '../../../../../../common/widgets/error_dialog_widget.dart';
import '../../../../../../common/widgets/loading_widget.dart';
import '../../../../../../common/widgets/space_widgets.dart';
import '../../../../../user/data/models/event/event.dart' as model;
import '../../../../data/models/event_dates_checkbox.dart';
import '../../../bloc/event_booking_bloc/event_booking_bloc.dart';
import '../../../bloc/make_donation_bloc/make_donation_bloc.dart';
import '../../../bloc/my_bookings_bloc/my_bookings_bloc.dart';
import 'event_dates_select_checkbox.dart';

const double borderSideWidth = 1.2;
final BorderRadius borderRadius = BorderRadius.circular(12);

class BottomButtons extends StatelessWidget {
  final model.Event event;

  BottomButtons({Key? key, required this.event}) : super(key: key);
  final EventDatesCheckbox _eventDatesCheckbox = EventDatesCheckbox();

  @override
  Widget build(BuildContext context) {
    return Align(
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
            Builder(
              builder: (context) {
                final eventBookingBloc = context.watch<EventBookingBloc>();
                final myBookingsBloc = context.watch<MyBookingsBloc>();
                final makeDonationBLoc = context.watch<MakeDonationBloc>();

                eventBookingBloc.state.whenOrNull(
                  success: () {
                    myBookingsBloc.add(
                      MyBookingsEvent.fetch(eventId: event.id),
                    );
                    eventBookingBloc.emit(const EventBookingState.initial());
                  },
                );

                return myBookingsBloc.state.maybeWhen(
                  error: (failure) => ErrorDialog(
                    failure: failure,
                    onPressed: () => myBookingsBloc.add(
                      MyBookingsEvent.fetch(eventId: event.id),
                    ),
                  ),
                  orElse: () => Padding(
                    padding: MyPadding.LR_24,
                    child: Row(
                      children: [
                        Expanded(
                          child: MyElevatedButton(
                            backgroundColor: Color(0xFF1a222d),
                            padding: 0,
                            widget: const Icon(
                              Icons.currency_ruble,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () => _showModalEventDonation(
                              context,
                              makeDonationBloc: makeDonationBLoc,
                            ),
                          ),
                        ),
                        const HorizontalSpace(10),
                        Expanded(
                          flex: 4,
                          child: MyElevatedButton(
                            backgroundColor: myBookingsBloc.state.maybeWhen(
                              loaded: (bookings) {
                                if (bookings.isNotEmpty) {
                                  return Colors.grey[300];
                                } else {
                                  return null;
                                }
                              },
                              orElse: () => null,
                            ),
                            padding: 0,
                            widget: myBookingsBloc.state.maybeWhen(
                              loaded: (bookings) {
                                if (bookings.isNotEmpty) {
                                  return Text(
                                    L10n.outTicket,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            color: AppColors.mainTextColor),
                                  );
                                } else {
                                  return Text(
                                    L10n.getTicket,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            color: AppColors.mainTextColor),
                                  );
                                }
                              },
                              orElse: () => const Center(
                                child: MyLoadingWidget(),
                              ),
                            ),
                            onPressed: myBookingsBloc.state.whenOrNull(
                              loaded: (bookings) {
                                if (bookings.isNotEmpty) {
                                  return () => myBookingsBloc.add(
                                        MyBookingsEvent.delete(
                                            bookingId: bookings[0].id,
                                            eventId: event.id),
                                      );
                                } else {
                                  return () => _showModalBooking(
                                        context,
                                        eventBookingBloc: eventBookingBloc,
                                      );
                                }
                              },
                              loading: () => null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _showModalBooking(
    BuildContext context, {
    required EventBookingBloc eventBookingBloc,
  }) {
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
                      child: Text(
                        L10n.cancel,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: AppColors.mainTextColor),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const HorizontalSpace(10),
                  Expanded(
                    flex: 2,
                    child: MyElevatedButton(
                      padding: 0,
                      widget: Text(L10n.confirm,
                          style: Theme.of(context).textTheme.labelLarge),
                      onPressed: () {
                        eventBookingBloc.add(
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

  _showModalEventDonation(
    BuildContext context, {
    required MakeDonationBloc makeDonationBloc,
  }) {
    final moneyController =
        TextEditingController(text: '${event.recommendedDonation.toInt()}');
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
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
                  'Поддержать организатора',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const VerticalSpace(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Сумма',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                        'Рекомендовано: ${event.recommendedDonation.toInt()} ₽',
                        style: appFont(
                            textStyle: Theme.of(context).textTheme.titleSmall,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryTextColor))
                  ],
                ),
                const VerticalSpace(10),

                MoneyInput(moneyController: moneyController),
                const VerticalSpace(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Карты',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Icon(Icons.add)
                  ],
                ),
                const VerticalSpace(10),
                Row(
                  children: [
                    Container(
                      width: 80,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.mainTextColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '••2123',
                            style: appFont(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const HorizontalSpace(10),
                    Container(
                      width: 80,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '••3201',
                            style: appFont(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              fontWeight: FontWeight.w400,
                              color: AppColors.mainTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // TextFormField(
                //   inputFormatters: [
                //     FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                //   ],
                //   // focusNode: ,
                //   keyboardType: TextInputType.numberWithOptions(decimal: true),
                //   style: Theme.of(context).textTheme.headlineLarge,
                //   decoration: InputDecoration(
                //     // border: InputBorder.none,
                //     hintText: 'Введите сумму',
                //   ),
                // ),
                const VerticalSpace(24),
                Row(
                  children: [
                    Expanded(
                      child: MyOutlinedButton(
                        padding: 0,
                        child: Text(
                          L10n.cancel,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: AppColors.mainTextColor),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const HorizontalSpace(10),
                    Expanded(
                      flex: 2,
                      child: MyElevatedButton(
                        padding: 0,
                        widget: Text('ПОДДЕРЖАТЬ',
                            style: Theme.of(context).textTheme.labelLarge),
                        onPressed: () {
                          print(moneyController.text);
                          makeDonationBloc.add(
                            MakeDonationEvent.makeDonation(
                                eventId: event.id,
                                amount: double.parse(moneyController.text)),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(20),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MoneyInput extends StatelessWidget {
  final TextEditingController moneyController;

  const MoneyInput({Key? key, required this.moneyController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextFormField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        controller: moneyController,
        decoration: InputDecoration(
          hintText: '',
          // prefixIcon: null,
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              width: borderSideWidth,
              color: AppColors.secondaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              width: borderSideWidth,
              color: AppColors.inputBorderColor,
            ),
          ),
        ),
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
