import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/service/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../user/presentation/bloc/get_list_events_bloc/get_list_events_bloc.dart';
import 'search_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        leading: BackButton(
          color: Colors.white,
        ),
        titleSpacing: 0,
        backgroundColor: AppColors.navbarColor,
        title: Text(
          'Поиск мероприятий',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
              ),
        ),
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
        create: (context) => GetListEventsBloc(getEventsUseCase: sl())
          ..add(const EventsEvent.fetch(page: 1, name: '')),
      )
    ], child: const SearchEventPageBody());
  }
}
