import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';

class ButtonBuilder extends StatelessWidget {
  const ButtonBuilder({
    Key? key,
    required this.context,
    required this.height,
    required this.width,
    required this.title,
    required this.colortext,
    required this.press,
  }) : super(key: key);

  final BuildContext context;
  final double height;
  final double width;
  final String title;
  final Color colortext;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            secColor,
          ),
          elevation: MaterialStateProperty.all(6),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        onPressed: press,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: colortext,
          ),
        ),
      ),
    );
  }
}

class TextInkwellBuilder extends StatelessWidget {
  const TextInkwellBuilder({
    Key? key,
    required this.context,
    required this.atext,
    required this.acolor,
    required this.btext,
    required this.bcolor,
    required this.press,
  }) : super(key: key);

  final BuildContext context;
  final String atext;
  final Color acolor;
  final String btext;
  final Color bcolor;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          atext,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: acolor,
          ),
        ),
        InkWell(
          onTap: press,
          child: Text(
            btext,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: bcolor,
            ),
          ),
        )
      ],
    );
  }
}




