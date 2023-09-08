import 'package:carousel_app/carousel/screen/carousel_information.dart';
import 'package:carousel_app/carousel/screen/carousel_screen.dart';
import 'package:carousel_app/global/global_variables.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              const CarouselScreen(),
              ValueListenableBuilder(
                valueListenable: GlobalVariables.indexCarousel,
                builder: (context, value, _) {
                  return CarouselInformation(
                    selectedIndex: GlobalVariables.indexCarousel,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.amber[200],
      leading: Row(
        children: <Widget>[
          const SizedBox(
            width: 5.0,
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {},
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
