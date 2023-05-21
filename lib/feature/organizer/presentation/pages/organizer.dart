import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'organizer_body.dart';

class OrganizerPage extends StatelessWidget {
  final int organizerId;

  const OrganizerPage({super.key, required this.organizerId});

  @override
  Widget build(BuildContext context) {
    return const OrganizerPageBody();
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[],
      child: const OrganizerPageBody(),
    );
  }
}
