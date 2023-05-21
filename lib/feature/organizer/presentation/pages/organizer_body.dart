import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/widgets/button_widgets.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../common/localization.dart';
import '../../../../common/widgets/skeleton_widgets.dart';

class OrganizerPageBody extends StatelessWidget {
  const OrganizerPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainCollapsingToolbar();
  }
}

class MainCollapsingToolbar extends StatefulWidget {
  const MainCollapsingToolbar({super.key});

  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> _tabs = [
    const Tab(text: L10n.organizerAbout),
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
        length: 3,
        child: NestedScrollView(
          // physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: const BackButton(color: AppColors.mainTextColor),
                title: const Text(
                  "Collapsing Toolbar",
                  style: TextStyle(color: Colors.black),
                ),
                titleSpacing: 0,
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert_sharp,
                      color: AppColors.mainTextColor,
                    ),
                    onPressed: () {},
                  ),
                ],
                // expandedHeight: 300.0,
                floating: false,
                pinned: true,
                elevation: 0,
                backgroundColor: Colors.white,
                stretch: true,
                // flexibleSpace: FlexibleSpaceBar(
                //   centerTitle: true,
                //   stretchModes: [StretchMode.zoomBackground],
                //   // title: Text("Collapsing Toolbar",
                //   //     style: Theme.of(context).textTheme.headlineLarge),
                //   background: ,
                // ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: 'https://i.imgur.com/2ap67m1.jpg',
                              placeholder: (context, url) =>
                                  const SkeletonImage(),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(top: 150),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: SizedBox(
                                  width: 96,
                                  height: 96,
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: 'https://i.imgur.com/zD3rPfH.jpg',
                                    placeholder: (context, url) =>
                                        const SkeletonImage(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const VerticalSpace(15),
                    // const VerticalSpace(120),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(200),
                    //   child: SizedBox(
                    //     width: 96,
                    //     height: 96,
                    //     child: CachedNetworkImage(
                    //       fit: BoxFit.cover,
                    //       imageUrl: 'https://i.imgur.com/zD3rPfH.jpg',
                    //       placeholder: (context, url) => const SkeletonImage(),
                    //     ),
                    //   ),
                    // ),
                    const VerticalSpace(10),
                    Text(
                      "Collapsing Toolbar",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const VerticalSpace(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '365',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const VerticalSpace(6),
                            Text(
                              'Подписчиков',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.secondaryTextColor,
                                  ),
                            ),
                          ],
                        ),
                        const HorizontalSpace(10),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.black12,
                        ),
                        const HorizontalSpace(10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '87',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const VerticalSpace(6),
                            Text(
                              'Мероприятий',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.secondaryTextColor,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                    const VerticalSpace(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 28,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor:
                                  AppColors.secondaryColor.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              L10n.subscribe,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        HorizontalSpace(10),
                        SizedBox(
                          height: 28,
                          // width: 28,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor: Colors.red.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Icon(
                              Icons.pets,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                    const VerticalSpace(15),
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  PreferredSize(
                    preferredSize: _tabBar.preferredSize,
                    child: ColoredBox(
                      color: Colors.white,
                      child: _tabBar,
                    ),
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            controller: _tabController,
            children: const [
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_transit, size: 350),
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
