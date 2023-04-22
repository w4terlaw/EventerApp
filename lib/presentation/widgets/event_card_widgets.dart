import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '/common/date_format.dart';
import '/presentation/widgets/space_widgets.dart';
import '/presentation/widgets/text_widgets.dart';

final BorderRadius borderRadius = BorderRadius.circular(16);

String dateTimeFormat(DateTime dateTime, String format) {
  initializeDateFormatting('ru', null);
  final formatter =
      DateFormat(format, 'ru').format(dateTime).replaceAll('.', '');
  return formatter;
}

class EventCompactCard extends StatelessWidget {
  final String preview;
  final DateTime startDateTime;
  final String name;

  const EventCompactCard({
    Key? key,
    required this.preview,
    required this.name,
    required this.startDateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 320.w,
      height: 110.h,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 90.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(preview, fit: BoxFit.cover),
            ),
          ),
          const HorizontalSpace(8),
          Container(
            margin: const EdgeInsets.all(10),
            width: 210.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activeText(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.compactCardDateFormat,
                  ).toUpperCase(),
                  size: 12.0,
                  weight: FontWeight.bold,
                ),
                const VerticalSpace(3),
                cardTitleText(name, height: 1.4),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EventMiddleCard extends StatelessWidget {
  final String preview;
  final DateTime startDateTime;
  final String name;
  final String location;

  const EventMiddleCard({
    Key? key,
    required this.preview,
    required this.name,
    required this.startDateTime,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 320.w,
      height: 110.h,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 90.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(preview, fit: BoxFit.cover),
            ),
          ),
          const HorizontalSpace(18),
          SizedBox(
            width: 210.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activeText(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.middleCardDateFormat,
                  ),
                  size: 13.0,
                ),
                const VerticalSpace(6),
                SizedBox(
                  // height: 40.h,
                  child: cardTitleText(name, size: 15, height: 1.3),
                ),
                const VerticalSpace(8),
                SizedBox(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/icons/map-pin.png', width: 14.0),
                      const HorizontalSpace(3),
                      Expanded(child: secondaryText(location)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EventLargeCard extends StatelessWidget {
  final String preview;
  final DateTime startDateTime;
  final String name;
  final String location;
  final int numberMembers;

  const EventLargeCard({
    Key? key,
    required this.preview,
    required this.name,
    required this.startDateTime,
    required this.location,
    required this.numberMembers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 320.w,
      height: 280.h,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 130.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                preview,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(6),
                activeText(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.largeCardDateFormat,
                  ).toUpperCase(),
                  size: 14.0,
                  weight: FontWeight.bold,
                ),
                const VerticalSpace(8),
                titleText(
                  name,
                  size: 20,
                ),
                const VerticalSpace(8),
                SizedBox(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/icons/map-pin.png', width: 14.0),
                      const HorizontalSpace(6),
                      Expanded(child: secondaryText(location)),
                    ],
                  ),
                ),
                const VerticalSpace(16),
                activeText(
                  '+$numberMembers идут',
                  size: 14,
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
