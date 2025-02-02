import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/theme/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth > 1000) {
        return DesktopHome();
      } else if (constraints.maxWidth > 600) {
        return TabletHome();
      } else {
        return MobileHome();
      }
    });
  }
}

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppNest (Mobile)'),
        leading: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: Obx(() => Get.find<ThemeController>().isDarkMode.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode))),
      ),
      body: Column(
        children: [
          //Banner
          Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Banners(bannerHeight: 500)),
          //App list
          AppListDetails(),
        ],
      ),
    );
  }
}

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: Obx(() => themeController.isDarkMode.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode))),
      ),
      body: Column(
        children: [
          //Banner
          Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Banners(bannerHeight: 400)),
          //App list
          AppListDetails(),
        ],
      ),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: Obx(() => themeController.isDarkMode.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode))),
      ),
      body: Column(
        children: [
          //Banner
          Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Banners(bannerHeight: 200)),
          //App list
          AppListDetails(),
        ],
      ),
    );
  }
}

const List<String> bannerList = [
  'assets/banner/banner_0.png',
  'assets/banner/banner_1.png',
  'assets/banner/banner_2.png',
  'assets/banner/banner_3.png',
  'assets/banner/banner_4.png',
  'assets/banner/banner_5.png'
];

const List<String> iconList = [
  'assets/icon/icon_0.png',
  'assets/icon/icon_1.png',
  'assets/icon/icon_2.png',
  'assets/icon/icon_3.png',
  'assets/icon/icon_4.png',
  'assets/icon/icon_5.png'
];

// Horizontal Carousel Banner
class Banners extends StatelessWidget {
  const Banners({super.key, required this.bannerHeight});

  final double bannerHeight;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: bannerHeight, autoPlay: true),
      items: bannerList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image(image: AssetImage(i))));
          },
        );
      }).toList(),
    );
  }
}

//App list
class AppListDetails extends StatelessWidget {
  const AppListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: iconList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Image(width: 100, image: AssetImage(iconList[index])),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          softWrap: true,
                          "Battery Voice Alert! - Free",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            softWrap: true,
                            "Battery charging static analyzer. This application can helps user to monitor & analyse the battery performance. Users can analyses charging percentage with respect to time. Also support voice charging alerts! Precharging voice alert!"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(softWrap: true, """
                        Precharge alert options -> { 70%, 75%, 80%, 85%, 90%,95% }
                        Number of times precharge alert warning(Speaking).
                        Beep sound(on each battery level completed).
                        Speaking alert(Once battery get full charged).
                        Display current battery charging status.
                        Display current battery temperature status.
                        Display current battery health status.
                        Enable/Disable Setting.
                        Custom Themes(Background colour & Styles)
                        Useful Tips to improve your phone battery performance.
                        """),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
