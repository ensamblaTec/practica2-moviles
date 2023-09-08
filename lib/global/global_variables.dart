import 'package:carousel_app/carousel/entity/carousel_entity.dart';
import 'package:flutter/material.dart';

class GlobalVariables {
  static ValueNotifier<int> indexCarousel = ValueNotifier<int>(0);
  static ValueNotifier<bool> isFavorite = ValueNotifier(true);
  static ValueNotifier<bool> isFilter = ValueNotifier(false);

  static List<CarouselEntity> carousels = [
      CarouselEntity(
        id: 0,
        title: "Ropa 1",
        isFavorite: false,
        description: "Información del vestido 1",
        image: "assets/img1.jpeg",
      ),
      CarouselEntity(
        id: 1,
        title: "Ropa 2",
        isFavorite: true,
        description: "Información del vestido 2",
        image: "assets/img2.webp",
      ),
      CarouselEntity(
        id: 2,
        title: "Ropa 3",
        isFavorite: true,
        description: "Información del vestido 3",
        image: "assets/img3.jpg",
      ),
      CarouselEntity(
        id: 3,
        title: "Ropa 4",
        isFavorite: false,
        description: "Información del vestido 4",
        image: "assets/img4.webp",
      ),
      CarouselEntity(
        id: 4,
        title: "Ropa 5",
        isFavorite: false,
        description: "Información del vestido 5",
        image: "assets/img5.jpg",
      ),
      CarouselEntity(
        id: 5,
        title: "Ropa 6",
        isFavorite: true,
        description: "Información del vestido 6",
        image: "assets/img6.jpg",
      ),
    ];
}