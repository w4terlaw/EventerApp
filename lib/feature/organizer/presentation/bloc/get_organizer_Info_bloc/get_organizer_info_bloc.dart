import 'dart:async';

import 'package:eventer_app/feature/organizer/data/models/organizer_info/organizer_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/use_cases/get_organizer_other_info.dart';

part 'get_organizer_info_bloc.freezed.dart';
part 'get_organizer_info_event.dart';
part 'get_organizer_info_state.dart';

class GetOrganizerOtherInfoBloc
    extends Bloc<GetOrganizerOtherInfoEvent, GetOrganizerOtherInfoState> {
  final GetOrganizerOtherInfo getOrganizerInfoUseCase;

  GetOrganizerOtherInfoBloc({required this.getOrganizerInfoUseCase})
      : super(const GetOrganizerOtherInfoState.loading()) {
    on<_GetInfo>(_getInfo);
  }

  Future<FutureOr<void>> _getInfo(
      _GetInfo event, Emitter<GetOrganizerOtherInfoState> emit) async {
    emit(const GetOrganizerOtherInfoState.loading());
    final failureOrOrganizerInfo = await getOrganizerInfoUseCase(
        OrganizerOtherInfoParams(
            organizerId: event.organizerId,
            toggleSubscribe: event.toggleSubscribe));

    failureOrOrganizerInfo.fold(
        (failure) => emit(
              GetOrganizerOtherInfoState.error(failure: failure),
            ), (organizerInfo) {
      emit(
        GetOrganizerOtherInfoState.loaded(organizerInfo: organizerInfo),
      );
    });
  }
}
