import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import 'package:proyek_akhir/page_next/order_page/list_order.dart';
import 'package:proyek_akhir/sized_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoOrder.length,
      itemBuilder: (context, index) => Dismissible(
        key: Key(demoOrder[index].product.id.toString()),
        direction: DismissDirection.endToStart,
        background: Container(
          height: MyUtility(context).height * 0.2,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: const [
              Spacer(),
              Icon(
                Icons.delete,
                color: Colors.redAccent,
              )
            ],
          ),
        ),
        onDismissed: (direction) {
          setState(() {
            demoOrder.removeAt(index);
          });
        },
        child: ListOrder(order: demoOrder[index]),
      ),
    );
  }
}

class ListOrder extends StatelessWidget {
  const ListOrder({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MyUtility(context).width,
          height: MyUtility(context).height * 0.2,
          child: SizedBox(
            child: AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        order.product.images[0],
                        fit: BoxFit.fill,
                        scale: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.product.title,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Rp ${order.product.price}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          child: Container(
                            width: MyUtility(context).width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "${order.numItems}",
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
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
