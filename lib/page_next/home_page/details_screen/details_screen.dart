import 'package:flutter/material.dart';
import 'package:proyek_akhir/builder.dart';
import 'package:proyek_akhir/constant.dart';
import 'package:proyek_akhir/models/produk.dart';
import 'package:proyek_akhir/sized_config.dart';
import 'crousel_slider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProdukDetailsArgument arguments =
        ModalRoute.of(context)!.settings.arguments as ProdukDetailsArgument;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
        ),
        body: SingleChildScrollView(
          child: Body(
            product: arguments.product,
          ),
        ),
      ),
    );
  }
}

class ProdukDetailsArgument {
  final Product product;

  ProdukDetailsArgument({required this.product});
}

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CrouselSlider(product: product),
        CountainerBody(
          color: secColor,
          child: DeskripsiDetail(
            product: product,
            press: () {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MyUtility(context).width * 0.2,
            vertical: 5,
          ),
          child: ButtonBuilder(
            context: context,
            height: MyUtility(context).height * 0.1,
            width: double.infinity,
            title: 'Add to Chart',
            colortext: mainColor,
            press: () {},
          ),
        )
      ],
    );
  }
}

class DeskripsiDetail extends StatelessWidget {
  const DeskripsiDetail({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            onTap: press,
            child: Row(
              children: [
                Text(
                  'See More..',
                  style:
                      TextStyle(color: mainColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CountainerBody extends StatelessWidget {
  const CountainerBody({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MyUtility(context).height * 0.02),
      padding: EdgeInsets.only(top: MyUtility(context).height * 0.02),
      width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}