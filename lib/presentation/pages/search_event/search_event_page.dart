import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'package:eventer_app/presentation/widgets/app_drawer_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'search_event_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: TextButton(
          child: Image.asset(
            'assets/icons/arrow-left.png',
            color: AppColors.mainTextColor,
            height: 24,
            width: 24,
            // scale: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Text('Поиск', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: const SafeArea(
        child: Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<GetListEventsBloc>(
        create: (context) => GetListEventsBloc(getEventsUsecase: sl())
          ..add(const EventsEvent.fetch(page: 1, name: '')),
      )
    ], child: const SearchEventPageBody());
  }
}
