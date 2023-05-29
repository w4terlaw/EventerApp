import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/feature/events/presentation/bloc/user_bookings_bloc/user_bookings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service/locator_service.dart';
import '../../../../events/domain/use_cases/user_bookings.dart';
import 'bookings_body.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.navbarColor,
        title: Text(
          'Мои билеты',
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
        BlocProvider<UserBookingsBloc>(
          create: (context) => UserBookingsBloc(
            userBookingsUseCase: sl<UserBookings>(),
          )..add(const UserBookingsEvent.getBookings()),
        )
      ],
      child: const BookingsPageBody(),
    );
  }
}
