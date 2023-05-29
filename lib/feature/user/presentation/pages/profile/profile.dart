import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/feature/user/presentation/bloc/get_user_info_bloc/get_user_info_bloc.dart';
import 'package:eventer_app/feature/user/presentation/pages/profile/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service/locator_service.dart';
import '../../../domain/use_cases/get_user_info.dart';
import 'components/logout_user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          'Профиль',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
              ),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.navbarColor,
        actions: [
          IconButton(
            onPressed: () => logOut(),
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/icons/logout.png',
                    height: 24, width: 24, color: AppColors.boxColor),
              ],
            ),
          ),
        ],
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
        BlocProvider<GetUserInfoBloc>(
          create: (context) => GetUserInfoBloc(
            getUserInfoUseCase: sl<GetUserInfo>(),
          )..add(const GetUserInfoEvent.getInfo()),
        )
      ],
      child: ProfilePageBody(),
    );
  }
}
