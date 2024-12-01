import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_column.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/signup_body.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 370,
          decoration: BoxDecoration(
              color: Appcolors.grey, borderRadius: BorderRadius.circular(10)),
          child: TabBar(
              dividerColor: Appcolors.background,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              labelColor: Textcolor.brown850,
              unselectedLabelColor: Colors.black,
              labelStyle: Styles.textsty16,
              unselectedLabelStyle: Styles.textsty16,
              indicator: BoxDecoration(
                color: Appcolors.background,
                borderRadius: BorderRadius.circular(10),
              ),
              tabs: const [
                Text(
                  "إنشاء حساب",
                ),
                Text(
                  "تسجيل الدخول",
                )
              ]),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          height: 500,
          width: 358,
          child: TabBarView(
              controller: _tabController,
              children: const [CustomColumn(), SignupBody()]),
        )
      ],
    );
  }
}
