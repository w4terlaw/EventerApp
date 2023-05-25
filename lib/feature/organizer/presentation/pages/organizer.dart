import 'package:eventer_app/feature/organizer/presentation/bloc/get_organizer_bloc/get_organizer_bloc.dart';
import 'package:eventer_app/feature/organizer/presentation/bloc/get_organizer_events_bloc/get_organizer_events_bloc.dart';
import 'package:eventer_app/feature/organizer/presentation/bloc/get_organizer_feedbacks_bloc/get_organizer_feedbacks_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../service/locator_service.dart';
import '../bloc/get_organizer_Info_bloc/get_organizer_info_bloc.dart';
import 'organizer_body.dart';

class OrganizerPage extends StatelessWidget {
  final int organizerId;

  const OrganizerPage({super.key, required this.organizerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Wrapper(organizerId: organizerId));
  }
}

class Wrapper extends StatelessWidget {
  final int organizerId;

  const Wrapper({super.key, required this.organizerId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<GetOrganizerBloc>(
          create: (context) => GetOrganizerBloc(getOrganizerUseCase: sl())
            ..add(
              GetOrganizerEvent.get(organizerId: organizerId),
            ),
        ),
        BlocProvider<GetOrganizerOtherInfoBloc>(
          create: (context) => GetOrganizerOtherInfoBloc(
            getOrganizerInfoUseCase: sl(),
          )..add(GetOrganizerOtherInfoEvent.getInfo(organizerId: organizerId)),
        ),
        BlocProvider<GetOrganizerEventsBloc>(
          create: (context) => GetOrganizerEventsBloc(
            getOrganizerEventsUseCase: sl(),
          )..add(
              GetOrganizerEventsEvent.getEvents(
                  page: 1, organizerId: organizerId),
            ),
        ),
        BlocProvider(
          create: (context) => GetOrganizerFeedbacksBloc(
            getOrganizerFeedbacksUseCase: sl(),
          )..add(GetOrganizerFeedbacksEvent.getFeedbacks(
              organizerId: organizerId)),
        ),
      ],
      child: OrganizerPageBody(
        organizerId: organizerId,
      ),
    );
  }
}
