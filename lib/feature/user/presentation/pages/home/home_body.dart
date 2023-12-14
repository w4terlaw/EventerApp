import 'package:eventer_app/app.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/common/widgets/my_refresh_indicator.dart';
import 'package:eventer_app/common/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/constants.dart';
import '../../../../../common/localization.dart';
import '../../../../../common/widgets/space_widgets.dart';
import '../../bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'component/upcoming_events.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
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
          backgroundColor: AppColors.navbarColor,
          elevation: 0,
          floating: true,
          snap: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 16),
              child: GestureDetector(
                onTap: () => navigatorKey.currentState!.pushNamed('/search'),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
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
              icon:
                  Image.asset('assets/icons/notify.png', width: 22, height: 22),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(children: [
            VerticalSpace(8),
            EventListHeader(),
            EventsList(),
          ]),
        ),
      ],
    );
  }
}
