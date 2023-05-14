import 'package:eventer_app/feature/events/presentation/bloc/event_booking/event_booking_bloc.dart';
import 'package:eventer_app/feature/events/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/service/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_details_body.dart';

class EventDetails extends StatelessWidget {
  final int id;

  const EventDetails({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // bottomNavigationBar: Stack(
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //           colors: [Colors.white.withOpacity(0.2), Colors.white],
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
      //       child: MyElevatedButton(
      //         widget: Text(L10n.getTicket,
      //             style: Theme.of(context).textTheme.labelLarge),
      //         onPressed: () {
      //           showModalBottomSheet(
      //             context: context,
      //             isScrollControlled: true,
      //             shape: const RoundedRectangleBorder(
      //               borderRadius: BorderRadius.vertical(
      //                 top: Radius.circular(20),
      //               ),
      //             ),
      //             builder: (context) {
      //               return Container(
      //                 padding: const EdgeInsets.only(left:24, right:24, top: 10),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(bottom: 25),
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           ClipRRect(
      //                             borderRadius: BorderRadius.circular(100),
      //                             child: Container(
      //                               height: 5,
      //                               width: 50,
      //
      //                               color: Colors.black12,
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     const Text('ss'),
      //                   ],
      //                 ),
      //               );
      //             },
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      // bottomNavigationBar: MyElevatedButton(
      //   widget: Text(L10n.signInUpperCase,
      //       style: Theme.of(context).textTheme.labelLarge),
      //   onPressed: () {},
      // ),
      // appBar: AppBar(
      //   excludeHeaderSemantics: false,
      //   title: Text(
      //     'Мероприятие',
      //     style: Theme.of(context)
      //         .textTheme
      //         .headlineLarge!
      //         .copyWith(color: AppColors.mainTextColor),
      //   ),
      //   leading: IconButton(
      //     icon: Image.asset(
      //       'assets/icons/arrow-left.png',
      //       color: AppColors.mainTextColor,
      //       scale: 20,
      //     ),
      //     onPressed: () => Navigator.pop(context),
      //   ),
      //   actions: [
      //     TextButton(
      //       onPressed: null,
      //       child: Image.asset(
      //         'assets/icons/favorite.png',
      //         color: AppColors.mainTextColor,
      //         scale: 22,
      //       ),
      //     ),
      //   ],
      //   // flexibleSpace: ClipRRect(
      //   //   child: BackdropFilter(
      //   //     filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
      //   //     child: Container(
      //   //       color: Colors.transparent,
      //   //     ),
      //   //   ),
      //   // ),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
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
        BlocProvider(
          create: (context) => EventBookingBloc(eventBookingUseCase: sl()),
        ),
      ],
      child: const EventDetailsBody(),
    );
  }
}
