import 'package:flutter/material.dart';

import '../../../../../../common/date_format.dart';
import '../../../../../../common/widgets/space_widgets.dart';
import '../../../../../user/data/models/event/event.dart' as model;
import '../../../../data/models/event_dates_checkbox.dart';
import '../../../widgets/mini_tabs.dart';

class EventDatesSelectCheckbox extends StatefulWidget {
  final EventDatesCheckbox eventDatesCheckbox;
  final List<model.EventDates> eventDates;

  const EventDatesSelectCheckbox(
      {Key? key, required this.eventDates, required this.eventDatesCheckbox})
      : super(key: key);

  @override
  State<EventDatesSelectCheckbox> createState() =>
      _EventDatesSelectCheckboxState();
}

class _EventDatesSelectCheckboxState extends State<EventDatesSelectCheckbox> {
  Map<int, bool> _eventDatesCheckbox = {};

  @override
  void initState() {
    super.initState();

    bool isFirst = true;
    _eventDatesCheckbox = Map.fromIterable(
      widget.eventDates,
      key: (e) => e.id,
      value: (_) {
        if (isFirst) {
          isFirst = false;
          return true;
        } else {
          return false;
        }
      },
    );
    widget.eventDatesCheckbox.onMapChanged(_eventDatesCheckbox);
    // values = Map.fromIterable(widget.eventDates, key: (e) => e.id, value: (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.eventDates.map((eventDate) {
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

        return Column(
          children: [
            const VerticalSpace(10),
            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              // controlAffinity: ListTileControlAffinity.leading,
              title: MiniTab(
                title: dateTime,
                subTitle: timeRange,
              ),
              // ),
              value: _eventDatesCheckbox[eventDate.id],
              onChanged: (bool? value) {
                setState(() {
                  _eventDatesCheckbox[eventDate.id] = value!;
                  if (_eventDatesCheckbox.values
                      .every((selected) => !selected)) {
                    _eventDatesCheckbox[eventDate.id] = true;
                  }
                  widget.eventDatesCheckbox.onMapChanged(_eventDatesCheckbox);
                });
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
