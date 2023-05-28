import 'package:eventer_app/app.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/common/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/space_widgets.dart';
import '../../bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'component/upcoming_events.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final state = context.watch<GetListEventsBloc>().state;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          title: SizedBox(
            // TODO: Брать реальное местоположение и выводить на экран
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: 0.70,
                      child: Text(
                        "Текущее местопложение",
                        textAlign: TextAlign.center,
                        style: appFont(
                          textStyle:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Icon(Icons.arrow_right,
                        size: 18, color: AppColors.whiteColor)
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  "Республика Крым, Симферополь",
                  textAlign: TextAlign.center,
                  style: appFont(
                    textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                  ),
                ),
              ],
            ),
          ),
          // pinned: true,
          backgroundColor: Color(0xFF2e3842),
          elevation: 0,
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Image.asset(
          //     'assets/icons/menu.png',
          //     height: 22,
          //     width: 22,
          //   ),
          // ),
          floating: true,
          snap: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 24),
              child: GestureDetector(
                onTap: () => navigatorKey.currentState!.pushNamed('/search'),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        // offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: MySearchWidget(
                    onSubmitted: (value) {},
                    active: false,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              // backgroundColor: AppColors.appBarDeactivateColor,
              icon: Image.asset(
                'assets/icons/notify.png',
                width: 22,
                height: 22,
              ),
            ),
          ],
          // pinned: true,
        ),

        // SliverAppBar(
        //   // pinned: true,
        //   backgroundColor: AppColors.backgroundColor,
        //   // pinned: true,
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(
        //       bottom: Radius.circular(33),
        //     ),
        //   ),
        //   // bottom: PreferredSize(
        //   //   preferredSize: const Size.fromHeight(30),
        //   //   child: Container(
        //   //     color: AppColors.appBarColor,
        //   //   ),
        //   // ),
        //   flexibleSpace: Padding(
        //     padding: const EdgeInsets.only(top: 20.0, left:16.0, right: 16.0),
        //     child: GestureDetector(
        //       onTap: () => navigatorKey.currentState!.pushNamed('/search'),
        //       child: Container(
        //         padding: EdgeInsets.only(top:10, bottom: 10),
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         child: MySearchWidget(
        //           onSubmitted: (value) {
        //             context
        //                 .read<GetListEventsBloc>()
        //                 .add(EventsEvent.fetch(page: 1, name: value));
        //           },
        //           active: false,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              // Padding(
              //   padding:
              //       const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              //   child: GestureDetector(
              //     onTap: () => navigatorKey.currentState!.pushNamed('/search'),
              //     child: Container(
              //       padding: const EdgeInsets.all(12),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(12),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.withOpacity(0.1),
              //             spreadRadius: 3,
              //             blurRadius: 10,
              //             // offset: const Offset(0, 8),
              //           ),
              //         ],
              //       ),
              //       child: MySearchWidget(
              //         onSubmitted: (value) {},
              //         active: false,
              //       ),
              //     ),
              //   ),
              // ),
              const VerticalSpace(24),
              const UpcomingEventsList(),
              const UpcomingEventsList(),
              const UpcomingEventsList(),
              const UpcomingEventsList(),
              const UpcomingEventsList(),
              const UpcomingEventsList(),
            ],
          ),
        )
      ],
    );
  }
}
