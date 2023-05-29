import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/widgets/error_dialog_widget.dart';
import 'package:eventer_app/feature/organizer/presentation/bloc/get_organizer_bloc/get_organizer_bloc.dart';
import 'package:eventer_app/feature/organizer/presentation/pages/components/organizer_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization.dart';
import '../../../../common/my_text_theme.dart';
import '../../../../common/widgets/loading_widget.dart';
import '../../data/models/organizer/organizer.dart';
import 'components/organizer_events_tab.dart';

class OrganizerPageBody extends StatelessWidget {
  final int organizerId;

  const OrganizerPageBody({Key? key, required this.organizerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetOrganizerBloc>().state;
    return state.when(
      loading: () => const Center(
        child: MyLoadingWidget(),
      ),
      loaded: (organizer) => MainCollapsingToolbar(
        organizer: organizer,
      ),
      error: (failure) => ErrorDialog(
        failure: failure,
        onPressed: () {
          context.read<GetOrganizerBloc>().add(
                GetOrganizerEvent.get(organizerId: organizerId),
              );
        },
      ),
    );
  }
}

class MainCollapsingToolbar extends StatefulWidget {
  final Organizer organizer;

  const MainCollapsingToolbar({super.key, required this.organizer});

  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> _tabs = [
    const Tab(text: L10n.organizerEvents),
    const Tab(text: L10n.organizerReviews),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    // _tabController.animateTo(
    //   0,
    //   duration: const Duration(milliseconds: 2000),
    //   curve: Curves.ease,
    // );
  }

  TabBar get _tabBar => TabBar(
        controller: _tabController,
        labelColor: AppColors.secondaryColor,
        indicatorColor: AppColors.secondaryColor,
        splashBorderRadius: BorderRadius.circular(100),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3,
        unselectedLabelColor: Colors.grey,
        tabs: _tabs,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          floatHeaderSlivers: true,
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              OrganizerBackground(organizer: widget.organizer),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(PreferredSize(
                    preferredSize: _tabBar.preferredSize,
                    child: ColoredBox(
                      color: AppColors.backgroundColor,
                      child: _tabBar,
                    ))),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            controller: _tabController,
            children: [
              OrganizerEventsTab(
                organizerId: widget.organizer.id,
              ),
              // Icon(Icons.directions_transit, size: 350),
              Center(
                child: Text(
                  'Список пуст',
                  style: appFont(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryTextColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._preferredSize);

  final PreferredSize _preferredSize;

  @override
  double get minExtent => _preferredSize.preferredSize.height;

  @override
  double get maxExtent => _preferredSize.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _preferredSize,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
