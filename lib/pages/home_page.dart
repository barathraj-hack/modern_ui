import 'package:flutter/material.dart';
import 'package:my_app/components/bottom_bar.dart';
import 'package:my_app/theme/glass_box.dart';

import '../components/my_appbar.dart';
import '../components/my_tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // search button tapped
  void _searchButtonTapped() {}

  // our 3 tab options
  List tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  // bottom nav bar navigation
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 232, 238),
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: BottomBar(
            index: _currentBottomIndex,
            onTap: _handleBottomIndexChange,
          ),
        ),
        body: ListView(
          children: [
            // app bar + search button
            MyAppBar(
              title: 'EXPLORE COLLECTIONS',
              onTap: _searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
