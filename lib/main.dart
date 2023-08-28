import 'package:flutter/material.dart';
import 'package:food_recipes/pages/details_page.dart';
import 'package:food_recipes/pages/popular_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            PageView(
              children: const <Widget>[
                DetailsPage(
                    title: 'ROASTED LAMB',
                    backgroundImage: 'assets/images/3.jpg'),
                DetailsPage(
                    title: 'SECOND PAGE',
                    backgroundImage: 'assets/images/4.jpg'),
                DetailsPage(
                    title: 'THIRD PAGE',
                    backgroundImage: 'assets/images/5.jpg'),
              ],
            ),
            const PopularPage(),
          ],
        ),
      ),
    );
  }
}
