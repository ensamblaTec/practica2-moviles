import 'package:carousel_app/global/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: GlobalVariables.isFilter,
        builder: (context, value, _) {
          return Column(
            children: [
              CarouselSlider(
                items: value
                    ? GlobalVariables.carousels
                        .where((element) => element.isFavorite == true)
                        .map((filteredElement) {
                        return Center(
                          child: Image(image: AssetImage(filteredElement.image)),
                        );
                      }).toList()
                    : GlobalVariables.carousels
                        .map((element) => Center(
                              child: Image(image: AssetImage(element.image)),
                            ))
                        .toList(),
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      GlobalVariables.indexCarousel.value = index;
                    });
                  },
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: value
                      ? GlobalVariables.carousels
                          .where((element) => element.isFavorite == true)
                          .map((url) {
                          int index = GlobalVariables.carousels.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  GlobalVariables.indexCarousel.value == index
                                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                                      : const Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList()
                      : GlobalVariables.carousels.map((url) {
                          int index = GlobalVariables.carousels.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  GlobalVariables.indexCarousel.value == index
                                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                                      : const Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList()),
            ],
          );
        });
  }
}
