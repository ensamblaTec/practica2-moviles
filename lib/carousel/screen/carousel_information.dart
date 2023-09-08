import 'package:carousel_app/carousel/screen/counter_design.dart';
import 'package:carousel_app/global/global_variables.dart';
import 'package:flutter/material.dart';

class CarouselInformation extends StatefulWidget {
  final ValueNotifier<int> selectedIndex;

  const CarouselInformation({required this.selectedIndex, Key? key})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CarouselInformationState createState() => _CarouselInformationState();
}

class _CarouselInformationState extends State<CarouselInformation> {
  String title = "";
  String description = "";
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    widget.selectedIndex.addListener(_updateData);
  }

  void _updateData() {
    final currentIndex = widget.selectedIndex.value;
    setState(() {
      title = GlobalVariables.carousels[currentIndex].title;
      description = GlobalVariables.carousels[currentIndex].description;
      isFavorite = GlobalVariables.carousels[currentIndex].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    _updateData();
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      height: 500,
      width: 500,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('1 each'),
              const SizedBox(
                height: 20,
              ),
              const CounterDesign(),
              const Text(
                'Product Description',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  description,
                  style: const TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                ),
              ),
              const Expanded(child: Text("")),
              Row(
                children: [
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.amber.shade200),
                    ),
                    height: 70.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                         GlobalVariables.carousels[GlobalVariables.indexCarousel.value].isFavorite = !isFavorite; 
                          isFavorite = !isFavorite;
                        });
                      },
                      child: IconButton(
                        onPressed: () {},
                        icon: isFavorite
                            ? Icon(
                                Icons.favorite_border,
                                color: Colors.amber.shade300,
                              )
                            : Icon(
                                Icons.favorite,
                                color: Colors.amber.shade300,
                              ),
                      ),
                    ),
                  ),
                  const Expanded(child: Text("")),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    height: 70.0,
                    minWidth: 260.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.selectedIndex.removeListener(_updateData);
    super.dispose();
  }
}
