import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/service/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'skeleton_widgets.dart';
import 'space_widgets.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _createHeader(context),
          const VerticalSpace(46),
          _createDrawerItem(context,
              icon: 'assets/icons/user.png',
              text: L10n.myProfile,
              onTap: () => print('click ${L10n.myProfile}')),
          _createDrawerItem(context,
              icon: 'assets/icons/calendar.png',
              text: L10n.calendar,
              onTap: () => print('click ${L10n.myProfile}')),
          _createDrawerItem(context,
              icon: 'assets/icons/settings.png',
              text: 'Настройки',
              onTap: () => print('click ${L10n.settings}')),
          _createDrawerItem(context,
              icon: 'assets/icons/help-circle.png',
              text: L10n.helpFAQs,
              onTap: () => print('click ${L10n.helpFAQs}')),
          _createDrawerItem(context,
              icon: 'assets/icons/log-out.png',
              text: L10n.logOut,
              onTap: () => _logOut(context)),
          ListTile(
            title: const Text('Version 0.0.1'),
            onTap: () {},
          )
        ],
      ),
    );
  }

  Widget _createHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(top: 45, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(200)),
              child: CachedNetworkImage(
                imageUrl:
                    'https://yt3.ggpht.com/ytc/AKedOsLTle_LNhrecRrVJKp6fXIxcfJT2g1SLQhXrfLVT=s900-c-k-c0x00ffffff-no-rj',
                fit: BoxFit.cover,
                placeholder: (context, url) => const SkeletonImage(),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/images/no_preview.png'),
              ),
            ),
          ),
          const VerticalSpace(15),
          Text(
            'Эльмир Абкеримов',
            maxLines: 1,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  Widget _createHeader_2() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.fill,
        //         image: AssetImage('path/to/header_background.png'))),
        child: Stack(children: const <Widget>[
          // Positioned(
          //     bottom: 12.0,
          //     left: 16.0,
          //     child: Text("Flutter Step-by-Step",
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20.0,
          //             fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(BuildContext context,
      {required String icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          const HorizontalSpace(10),
          Image.asset(
            icon,
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  void _logOut(BuildContext context) {
    final SharedPreferences sharedPreferences = sl();
    sharedPreferences.remove(CacheConstants.CACHED_ACCESS_TOKEN);
    Navigator.pushReplacementNamed(context, '/login');
  }
}
