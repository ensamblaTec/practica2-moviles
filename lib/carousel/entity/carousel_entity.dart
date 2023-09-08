class CarouselEntity {
  final int id;
  final String image; 
  final String title;
  bool isFavorite;
  final String description;

  CarouselEntity({
    required this.id,
    required this.image,
    required this.title,
    required this.isFavorite,
    required this.description
  });
}

