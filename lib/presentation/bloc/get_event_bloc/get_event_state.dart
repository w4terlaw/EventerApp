part of 'get_event_bloc.dart';

@freezed
class GetEventState with _$GetEventState {
  const factory GetEventState.loading() = GetEventLoading;

  const factory GetEventState.loaded({
    required Event event,
  }) = GetEventLoaded;

  const factory GetEventState.error({
    required String error,
  }) = GetEventError;
}
