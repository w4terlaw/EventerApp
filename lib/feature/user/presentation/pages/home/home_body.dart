import 'package:eventer_app/app.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/common/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'component/upcoming_events.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

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
                        "Current Location",
                        textAlign: TextAlign.center,
                        style: appFont(
                          textStyle:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Icon(
                      Icons.arrow_right,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  "New Yourk, USA",
                  textAlign: TextAlign.center,
                  style: appFont(
                    textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                  ),
                ),
              ],
            ),
          ),
          // pinned: true,
          backgroundColor: AppColors.appBarColor,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/menu.png',
                height: 24,
                width: 24,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: CircleAvatar(
                backgroundColor: AppColors.appBarDeactivateColor,
                child: Image.asset(
                  'assets/icons/notify.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ],
          // pinned: true,
        ),
        SliverAppBar(
          // pinned: true,
          backgroundColor: AppColors.appBarColor,
          // pinned: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(33),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Container(
              color: AppColors.appBarColor,
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GestureDetector(
              onTap: () => navigatorKey.currentState!.pushNamed('/search'),
              child: MySearchWidget(
                onSubmitted: (value) {
                  context
                      .read<GetListEventsBloc>()
                      .add(EventsEvent.fetch(page: 1, name: value));
                },
                active: false,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: const <Widget>[
              UpcomingEventsList(),
            ],
          ),
        )
      ],
    );
  }
}
