import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import 'package:proyek_akhir/sized_config.dart';
import 'package:proyek_akhir/models/produk.dart';

class CrouselSlider extends StatelessWidget {
  final Product product;
  const CrouselSlider({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        aspectRatio: 5 / 4,
        viewportFraction: 1.05,
        autoPlay: false,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: product.images.length,
      itemBuilder: (context, index, realIndex) => Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 6.0,
          shadowColor: mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  product.images[index],
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    width: MyUtility(context).width * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "${index + 1}/${product.images.length}",
                        style: const TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
