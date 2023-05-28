import 'package:eventer_app/feature/events/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/feature/events/presentation/bloc/make_donation_bloc/make_donation_bloc.dart';
import 'package:eventer_app/service/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/makeDonation.dart';
import '../../bloc/event_booking_bloc/event_booking_bloc.dart';
import '../../bloc/my_bookings_bloc/my_bookings_bloc.dart';
import 'event_details_body.dart';

class EventDetailsPage extends StatelessWidget {
  final int eventId;

  const EventDetailsPage({Key? key, required this.eventId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      body: Wrapper(eventId: eventId),
    );
  }
}

class Wrapper extends StatelessWidget {
  final int eventId;

  const Wrapper({Key? key, required this.eventId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetEventBloc>(
          create: (context) => GetEventBloc(getEventUseCase: sl())
            ..add(GetEventEvent.byId(eventId: eventId)),
        ),
        BlocProvider<EventBookingBloc>(
          create: (context) => EventBookingBloc(eventBookingUseCase: sl()),
        ),
        BlocProvider<MyBookingsBloc>(
          create: (context) => MyBookingsBloc(
            getMyEventBookingsUseCase: sl(),
            deleteBookingsUseCase: sl(),
          )..add(MyBookingsEvent.fetch(eventId: eventId)),
        ),
        BlocProvider<MakeDonationBloc>(
          create: (context) =>
              MakeDonationBloc(makeDonationUseCase: sl<MakeDonation>()),
        )
      ],
      child: EventDetailsPageBody(eventId: eventId),
    );
  }
}
