import 'package:eventer_app/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventBody extends StatelessWidget {
  const EventBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetEventBloc>().state;
    return state.when(
        loading: () => const Center(
              child: MyLoadingWidget(),
            ),
        loaded: (event) => Text(event.toString()),
        error: (error) => Text(error));
  }
}
