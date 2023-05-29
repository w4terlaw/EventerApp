import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../events/data/models/booking/booking.dart';
import '../../../../user/data/models/event/event.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
class Feedback with _$Feedback {
  const factory Feedback({
    required int id,
    required String description,
    required int rate,
    required DateTime dateTime,
    required Event event,
    required User user,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}
