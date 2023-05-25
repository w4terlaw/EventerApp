import 'package:dio/dio.dart';
import 'package:eventer_app/feature/organizer/data/models/feedback/feedback.dart';
import 'package:eventer_app/service/dio/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants.dart';
import '../../../../core/error/exception.dart';
import '../models/event/event.dart';
import '../models/organizer/organizer.dart';
import '../models/organizer_info/organizer_info.dart';

abstract class OrganizerRemoteDataSource {
  /// GET - /organizer/<id>
  Future<Organizer> getOrganizer(int organizerId);

  /// GET - /organizer/info/<id>
  Future<OrganizerInfo> getOrganizerOtherInfo(int organizerId, bool toggleSubscribe);

  /// GET - /event/?page=<int>&organizerId=<id>
  Future<List<Event>> getOrganizerEvents(int page, int organizerId);

  /// GET - /feedback/organizerId=<id>
  Future<List<Feedback>> getOrganizerFeedbacks(int organizerId);
}

class OrganizerRemoteDataSourceImpl implements OrganizerRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  OrganizerRemoteDataSourceImpl(
      {required this.dioClient, required this.sharedPreferences});

  @override
  Future<Organizer> getOrganizer(int organizerId) async {
    final organizer = await _getEndPoint(
      endpoint: '${ApiConstants.ORGANIZER}/$organizerId',
    );
    return Organizer.fromJson(organizer);
  }

  @override
  Future<OrganizerInfo> getOrganizerOtherInfo(int organizerId, bool toggleSubscribe) async {
    final organizerInfo = await _getEndPoint(
      endpoint: '${ApiConstants.ORGANIZER_INFO}/$organizerId',
      queryParameters: {'toggle_subscribe': toggleSubscribe}
    );
    return OrganizerInfo.fromJson(organizerInfo);
  }

  @override
  Future<List<Event>> getOrganizerEvents(int page, int organizerId) async {
    final events = await _getEndPoint(
      endpoint: ApiConstants.EVENT,
      queryParameters: {
        'page': page,
        'organizerId': organizerId,
      },
    );
    return (events as List).map((event) => Event.fromJson(event)).toList();
  }

  @override
  Future<List<Feedback>> getOrganizerFeedbacks(int organizerId) async {
    final feedbacks = await _getEndPoint(
      endpoint: ApiConstants.FEEDBACK,
      queryParameters: {
        'organizerId': organizerId,
      },
    );
    return (feedbacks as List)
        .map((feedback) => Feedback.fromJson(feedback))
        .toList();
  }

  Future<dynamic> _getEndPoint(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dioClient.dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioError catch (e) {
      throw ServerError();
    }
  }
}
