import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/feature/presentation/widgets/skeleton_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '/common/date_format.dart';
import '/feature/presentation/widgets/space_widgets.dart';

final BorderRadius borderRadius = BorderRadius.circular(16);

String dateTimeFormat(DateTime dateTime, String format) {
  initializeDateFormatting('ru', null);
  final formatter =
      DateFormat(format, 'ru').format(dateTime).replaceAll('.', '');
  return formatter;
}

class EventCompactCard extends StatelessWidget {
  final String previewUrl;
  final DateTime startDateTime;
  final String name;

  const EventCompactCard({
    Key? key,
    required this.previewUrl,
    required this.name,
    required this.startDateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            width: 100.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
                imageUrl: previewUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => const SkeletonImage(),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
          ),
          Container(
            // color: Colors.grey,
            margin: const EdgeInsets.only(
              left: 16,
            ),
            width: 200.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.compactCardDateFormat,
                  ).toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor,
                      ),
                ),
                const VerticalSpace(3),
                SizedBox(
                  height: 55.h,
                  // color: Colors.grey,
                  child: Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(height: 1.4, fontSize: 18.0),
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

class EventMiddleCard extends StatelessWidget {
  final String previewUrl;
  final DateTime startDateTime;
  final String name;
  final String location;

  const EventMiddleCard({
    Key? key,
    required this.previewUrl,
    required this.name,
    required this.startDateTime,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 320.w,
      height: 120.h,
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
              child: Image.network(previewUrl, fit: BoxFit.cover),
            ),
          ),
          const HorizontalSpace(18),
          SizedBox(
            width: 210.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.middleCardDateFormat,
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 13.0),
                ),
                const VerticalSpace(6),
                SizedBox(
                  // height: 40.h,
                  child: Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 15.0, height: 1.3),
                  ),
                ),
                const VerticalSpace(8),
                SizedBox(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/icons/map-pin.png', width: 14.0),
                      const HorizontalSpace(3),
                      Expanded(
                        child: Text(
                          location,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
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
  final String previewUrl;
  final DateTime startDateTime;
  final String name;
  final String location;
  final int numberMembers;

  const EventLargeCard({
    Key? key,
    required this.previewUrl,
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
                previewUrl,
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
                Text(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.largeCardDateFormat,
                  ).toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const VerticalSpace(8),
                Text(
                  dateTimeFormat(
                    startDateTime,
                    MyDateFormat.largeCardDateFormat,
                  ).toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 20.0),
                ),
                const VerticalSpace(8),
                SizedBox(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/icons/map-pin.png', width: 14.0),
                      const HorizontalSpace(6),
                      Expanded(
                        child: Text(
                          location,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpace(16),
                Text(
                  '+$numberMembers идут',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventHomeMiddleCard extends StatelessWidget {
  final String previewUrl;
  final DateTime startDateTime;
  final String name;
  final int number;
  final String location;

  const EventHomeMiddleCard({
    Key? key,
    required this.previewUrl,
    required this.name,
    required this.startDateTime,
    required this.number,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String day =
        MyDateFormat.dateTimeFormat(startDateTime, MyDateFormat.dayFormat);
    final String month =
        MyDateFormat.dateTimeFormat(startDateTime, MyDateFormat.monthFormat);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 250.h,
          width: 255.w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: SizedBox(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    SizedBox(
                      height: 140.h,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: CachedNetworkImage(
                          imageUrl: previewUrl,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const SkeletonImage(),
                          errorWidget: (context, url, error) =>
                              const Center(child: Icon(Icons.error)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 45,
                              width: 45,
                              color: Colors.white.withOpacity(0.9),
                              child: Column(
                                children: [
                                  Text(
                                    day,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                          height: null,
                                        ),
                                  ),
                                  Text(
                                    month,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                          height: null,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              color: Colors.white.withOpacity(0.9),
                              height: 30,
                              width: 30,
                              child: TextButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/icons/favorite.png',
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const VerticalSpace(10),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(height: 1.4),
                      ),
                      const VerticalSpace(10),
                      Text(
                        '+${number} Идут',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondaryColor,
                            ),
                      ),
                      const VerticalSpace(10),
                      SizedBox(
                        child: Row(
                          children: <Widget>[
                            Image.asset('assets/icons/map-pin.png',
                                width: 14.0),
                            const HorizontalSpace(6),
                            Expanded(
                              child: Text(
                                location,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondaryTextColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
