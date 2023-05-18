import 'package:flutter/material.dart';

import '../../../../../../common/constants.dart';
import '../../../../../../common/date_format.dart';
import '../../../widgets/mini_tabs.dart';
import '../../../../../../common/widgets/space_widgets.dart';
import '../../../../../user/data/models/event.dart' as model;

class EventDatesList extends StatelessWidget {
  final List<model.EventDates> eventDates;

  const EventDatesList({Key? key, required this.eventDates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MyPadding.LR_24,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: eventDates.map((eventDate) {
          final String dateTime = MyDateFormat.dateTimeFormat(
              eventDate.startDateTime, MyDateFormat.tabsDateFormat);

          final String formattedRange = MyDateFormat.dateTimeFormat(
              eventDate.startDateTime, MyDateFormat.weekDayDateFormat);
          final String formattedStart = MyDateFormat.dateTimeFormat(
              eventDate.startDateTime, MyDateFormat.timeFormat);
          final String formattedEnd = MyDateFormat.dateTimeFormat(
              eventDate.endDateTime, MyDateFormat.timeFormat);

          final String timeRange =
              '$formattedRange $formattedStart - $formattedEnd';

          return Row(
            children: [
              MiniTab(
                iconPath: 'assets/icons/calendar_tab.png',
                title: dateTime,
                subTitle: timeRange,
              ),
              const HorizontalSpace(30),
            ],
          );
        }).toList(),
      ),
    );
  }
}
