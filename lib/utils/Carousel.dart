import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicators extends StatefulWidget {
  final List<String> imageList;

  const CarouselWithIndicators({super.key, required this.imageList});
  @override
  _CarouselWithIndicatorsState createState() => _CarouselWithIndicatorsState();
}

class _CarouselWithIndicatorsState extends State<CarouselWithIndicators> {
  int _currentIndex = 0;

  // final List<String> _imageList = [
  //   "image_url_1",
  //   "image_url_2",
  //   "image_url_3",
  //   // Add more image URLs here...
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            items: widget.imageList.map((url) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(url),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              aspectRatio: 16 / 8,
              // disableCenter: true,
              // height: 200.0,
              onPageChanged: (index, reason) {
                setState(() {
                  print(index);
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageList.map((url) {
            int index = widget.imageList.indexOf(url);
            return GestureDetector(
              onTap: () {
                print('$_currentIndex is the current index');
              },
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
