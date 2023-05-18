import 'package:flutter/material.dart';

import '../../../../../../common/constants.dart';
import '../../../../../../common/widgets/space_widgets.dart';
import '../../../../../user/data/models/event.dart' as model;
import '../../../widgets/mini_tabs.dart';

class VenuesEventList extends StatelessWidget {
  final List<model.Venues> venues;

  const VenuesEventList({Key? key, required this.venues}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: MyPadding.LR_24,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: venues.map((venue) {
          final String name = '${venue.address} - ${venue.name}';
          final String location =
              '${venue.city.state.country.name}, ${venue.city.state.name}, ${venue.city.name}';
          return Row(
            children: [
              MiniTab(
                iconPath: 'assets/icons/location.png',
                title: name,
                subTitle: location,
              ),
              const HorizontalSpace(30),
            ],
          );
        }).toList(),
      ),
    );
  }
}
