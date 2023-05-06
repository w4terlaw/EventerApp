import 'dart:ui';

import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/presentation/pages/event_details/event_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetailPage extends StatelessWidget {
  final int id;

  const EventDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: false,
        title: Text(
          'Мероприятие',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColors.mainTextColor),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/arrow-left.png',
            color: AppColors.mainTextColor,
            scale: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: null,
            child: Image.asset(
              'assets/icons/favorite.png',
              color: AppColors.mainTextColor,
              scale: 22,
            ),
          ),
        ],
        // flexibleSpace: ClipRRect(
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
        //     child: Container(
        //       color: Colors.transparent,
        //     ),
        //   ),
        // ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Wrapper(id: id),
    );
  }
}

class Wrapper extends StatelessWidget {
  final int id;

  const Wrapper({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetEventBloc(getEventUsecase: sl())
            ..add(GetEventEvent.byId(id: id)),
        ),
      ],
      child: const EventDetailsBody(),
    );
  }
}
