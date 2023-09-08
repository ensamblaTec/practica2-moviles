import 'package:carousel_app/carousel/entity/carousel_entity.dart';
import 'package:flutter/material.dart';

class GlobalVariables {
  static ValueNotifier<int> indexCarousel = ValueNotifier<int>(0);
  static ValueNotifier<bool> isFavorite = ValueNotifier(true);

  static List<CarouselEntity> carousels = [
      CarouselEntity(
        title: "Ropa 1",
        isFavorite: false,
        description: "Información del vestido 1",
        image: "assets/img1.jpeg",
      ),
      CarouselEntity(
        title: "Ropa 2",
        isFavorite: true,
        description: "Información del vestido 2",
        image: "assets/img2.webp",
      ),
      CarouselEntity(
        title: "Ropa 3",
        isFavorite: true,
        description: "Información del vestido 3",
        image: "assets/img3.jpg",
      ),
      CarouselEntity(
        title: "Ropa 4",
        isFavorite: false,
        description: "Información del vestido 4",
        image: "assets/img4.webp",
      ),
      CarouselEntity(
        title: "Ropa 5",
        isFavorite: false,
        description: "Información del vestido 5",
        image: "assets/img5.jpg",
      ),
      CarouselEntity(
        title: "Ropa 6",
        isFavorite: true,
        description: "Información del vestido 6",
        image: "assets/img6.jpg",
      ),
    ];
}