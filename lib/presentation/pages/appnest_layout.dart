import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/theme/theme_controller.dart';

class AppNestApp extends StatelessWidget {
  const AppNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppNest',
      theme: ThemeData(useMaterial3: true),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return WebLayout(themeController); // Web layout
        } else if (constraints.maxWidth > 600) {
          return TabletLayout(themeController); // Tablet layout
        } else {
          return MobileLayout(themeController); // Mobile layout
        }
      },
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout(this.themeController, {super.key});

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppNest (Mobile)'),
        leading: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: Obx(() => themeController.isDarkMode.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            ContentSection(title: 'Featured Apps', cardList: featuredCardList),
            ContentSection(title: 'Latest Apps', cardList: latestCardList),
            ContentSection(title: 'Top Categories', cardList: categoryCardList),
            const SizedBox(height: 20),
            const Text('Copyright © 2023 AppNest'),
          ],
        ),
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout(this.themeController, {super.key});

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppNest (Tablet)'),
        leading: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: Obx(() => themeController.isDarkMode.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            Row(
              children: [
                Expanded(
                  child: ContentSection(
                      title: 'Featured Apps', cardList: featuredCardList),
                ),
                Expanded(
                  child: ContentSection(
                      title: 'Latest Apps', cardList: latestCardList),
                ),
              ],
            ),
            ContentSection(title: 'Top Categories', cardList: categoryCardList),
            const SizedBox(height: 20),
            const Text('Copyright © 2023 AppNest'),
          ],
        ),
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  const WebLayout(this.themeController, {super.key});

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppNest (Web)'),
        leading: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: Obx(() => themeController.isDarkMode.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode))),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeroSection(),
                Row(
                  children: [
                    Expanded(
                      child: ContentSection(
                          title: 'Featured Apps', cardList: featuredCardList),
                    ),
                    Expanded(
                      child: ContentSection(
                          title: 'Latest Apps', cardList: latestCardList),
                    ),
                    Expanded(
                      child: ContentSection(
                          title: 'Top Categories', cardList: categoryCardList),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Copyright © 2023 AppNest'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider(
        options: CarouselOptions(autoPlay: true),
        items: [
          Image.network('https://placeimg.com/640/480/tech', fit: BoxFit.cover),
          Image.network('https://placeimg.com/640/480/arch', fit: BoxFit.cover),
          Image.network('https://placeimg.com/640/480/nature',
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}

class ContentSection extends StatelessWidget {
  final String title;
  final List<Widget> cardList;

  const ContentSection(
      {super.key, required this.title, required this.cardList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          int crossAxisCount = 2;
          if (constraints.maxWidth > 600) {
            crossAxisCount = 3;
          }
          if (constraints.maxWidth > 900) {
            crossAxisCount = 4;
          }
          return GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: crossAxisCount,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: cardList,
          );
        }),
      ],
    );
  }
}

class AppCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const AppCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(description, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Dummy data (replace with your actual data)
List<Widget> featuredCardList = List.generate(
    10,
    (index) => AppCard(
        imageUrl: 'https://placeimg.com/200/200/tech',
        title: 'Featured App $index',
        description: 'Description $index'));
List<Widget> latestCardList = List.generate(
    10,
    (index) => AppCard(
        imageUrl: 'https://placeimg.com/200/200/nature',
        title: 'Latest App $index',
        description: 'Description $index'));
List<Widget> categoryCardList = List.generate(
    10,
    (index) => AppCard(
        imageUrl: 'https://placeimg.com/200/200/arch',
        title: 'Category $index',
        description: 'Description $index'));
