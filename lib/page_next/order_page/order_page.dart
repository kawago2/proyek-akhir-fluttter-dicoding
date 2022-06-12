import 'package:flutter/material.dart';
import 'package:proyek_akhir/builder.dart';
import 'package:proyek_akhir/constant.dart';
import 'package:proyek_akhir/page_next/order_page/body_order.dart';
import 'package:proyek_akhir/sized_config.dart';

import 'list_order.dart';

class SecPage extends StatelessWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbarBuilder(),
        body: const Body(),
        bottomNavigationBar: const OrderCO(),
      ),
    );
  }

  AppBar appbarBuilder() {
    return AppBar(
      backgroundColor: mainColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'List Order',
            style: TextStyle(color: secColor, fontFamily: 'Roboto'),
          ),
          Text(
            ' - ${demoOrder.length} item',
            style: TextStyle(
                color: secColor,
                fontWeight: FontWeight.normal,
                fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }
}

class OrderCO extends StatelessWidget {
  const OrderCO({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Total Price "),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'RP ${demoOrder[0].product.price * demoOrder[0].numItems + demoOrder[1].product.price * demoOrder[1].numItems}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              width: MyUtility(context).width * 0.08,
            ),
            ButtonBuilder(
              context: context,
              height: MyUtility(context).height * 0.05,
              width: MyUtility(context).width * 0.3,
              title: 'Buy',
              colortext: treColor,
              press: () {},
            ),
            ButtonBuilder(
              context: context,
              height: MyUtility(context).height * 0.05,
              width: MyUtility(context).width * 0.3,
              title: 'Voucher',
              colortext: treColor,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
