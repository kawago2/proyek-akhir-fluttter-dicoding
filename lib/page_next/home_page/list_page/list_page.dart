import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import 'package:proyek_akhir/models/produk.dart';
import 'package:proyek_akhir/page_next/home_page/details_screen/details_screen.dart';
import 'package:proyek_akhir/sized_config.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProdukList(
                  product: demoProducts[index],
                  press: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                        settings: RouteSettings(
                          arguments: ProdukDetailsArgument(
                              product: demoProducts[index]),
                        ),
                      ),
                    )
                  },
/*
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailsScreen())),
              */
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class ProdukList extends StatelessWidget {
  const ProdukList({
    Key? key,
    this.aspectRatio = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);

  final double aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MyUtility(context).width,
          height: MyUtility(context).height * 0.2,
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: GestureDetector(
              onTap: press,
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(product.images[0],
                          scale: 2, fit: BoxFit.fill),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "RP. ${product.price}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rate,
                              size: 16,
                            ),
                            Text(
                              "${product.rating}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
