import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/feature/user/presentation/bloc/get_user_favorite_organizers_bloc/get_user_favorite_organizers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service/locator_service.dart';
import '../../../domain/use_cases/get_user_favorite_organizers.dart';
import 'favorite_organizers_body.dart';

class FavoriteOrganizersPage extends StatelessWidget {
  const FavoriteOrganizersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        backgroundColor: AppColors.navbarColor,
        title: Text(
          'Мои подписки',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: const Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetUserFavoriteOrganizersBloc>(
          create: (context) => GetUserFavoriteOrganizersBloc(
            getUserFavoriteOrganizersUseCase: sl<GetUserFavoriteOrganizers>(),
          )..add(const GetUserFavoriteOrganizersEvent.getFavoriteOrganizers()),
        )
      ],
      child: const FavoriteOrganizersPageBody(),
    );
  }
}
