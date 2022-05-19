import 'package:flutter/material.dart';
import 'package:portfolio/pages/a_home/screens/home_mobile.dart';
import 'package:portfolio/pages/b_about/screens/about_mobile.dart';
import 'package:portfolio/pages/c_experience/screens/experience_mobile.dart';
import 'package:portfolio/pages/d_work/screens/work_mobile.dart';
import 'package:portfolio/pages/e_contact/screens/contact_mobile.dart';
import '../widgets/mobile/mobile_drawer.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile'),
        elevation: 0,
      ),
      endDrawer: MobileDrawer(width: width),
      body: Center(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            scrollbars: false,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              HomeMobile(),
              AboutMobile(),
              ExperienceMobile(),
              WorkMobile(),
              ContactMobile(),
            ],
          ),
        ),
      ),
    );
  }
}
