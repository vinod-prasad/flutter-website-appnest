import 'package:appnest_app/common/widgets/app_header.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("AppNest", style: TextStyle(color: Colors.white)),
      //   backgroundColor: Colors.black,
      //   actions: [
      //     AppBarActionButton("Home", () {
      //       Navigator.pushNamed(context, routes.homeRoute);
      //     }),
      //     AppBarActionButton("Applications", () {
      //       Navigator.pushNamed(context, routes.appsRoute);
      //     }),
      //     AppBarActionButton("Gallery", () {
      //       Navigator.pushNamed(context, routes.galleryRoute);
      //     }),
      //     AppBarActionButton("Contact Us", () {
      //       Navigator.pushNamed(context, routes.contactRoute);
      //     }),
      //   ],
      // ),
      appBar: AppHeader(),
      body: Container(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 400),
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        // decoration: BoxDecoration(
                        //     color: Colors.amber, shape: BoxShape.rectangle),
                        // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.0),
                            child: Image.network(i)));
                  },
                );
              }).toList(),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Theme")),
            ElevatedButton(onPressed: () {}, child: Text("Theme")),
          ],
        ),
      ),
    );
  }
}
