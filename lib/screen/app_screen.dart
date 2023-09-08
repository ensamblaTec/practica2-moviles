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
  bool isFilter = GlobalVariables.isFilter.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ValueListenableBuilder(
          valueListenable: GlobalVariables.indexCarousel,
          builder: (context, value, _) {
            return ListView(
              children: <Widget>[
                Column(
                  children: [
                    CarouselScreen(),
                    CarouselInformation(
                      selectedIndex: GlobalVariables.indexCarousel,
                    )
                  ],
                ),
              ],
            );
          }),
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
        ValueListenableBuilder(
            valueListenable: GlobalVariables.isFilter,
            builder: (context, value, _) {
              return IconButton(
                icon: Icon(
                  !value ? Icons.favorite_border : Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {
                  GlobalVariables.isFilter.value = !value;
                },
              );
            }),
        const SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
