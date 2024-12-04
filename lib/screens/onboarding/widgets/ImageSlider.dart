import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ImageSlider extends StatelessWidget {
  final List<String> images; // Add a property for images

  const ImageSlider({super.key,required this.images});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.75,
            aspectRatio: 1.1,
            enlargeFactor:1,
            enlargeCenterPage: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            // enlargeStrategy: CenterPageEnlargeStrategy.zoom

          ),
          items: images
              .map((item) => Container(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.52,
            child:ClipRRect(
              borderRadius:BorderRadius.circular(20),
              child: Image.network(item, fit: BoxFit.cover, width: MediaQuery.of(context).size.width*0.7,height:  MediaQuery.of(context).size.height*0.52, ),
            ),
          ))
              .toList(),
        ));
  }
}
