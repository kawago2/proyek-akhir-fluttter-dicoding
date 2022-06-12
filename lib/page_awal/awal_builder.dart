import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';

class TermsPolicy extends StatefulWidget {
  const TermsPolicy({Key? key}) : super(key: key);

  @override
  State<TermsPolicy> createState() => _TermsPolicyState();
}

class _TermsPolicyState extends State<TermsPolicy> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
              checkColor: mainColor,
              fillColor: MaterialStateProperty.all(secColor),
            ),
            Text.rich(
              TextSpan(
                  text: "I agree with ",
                  style: TextStyle(
                      color: quadColor.withOpacity(0.8),
                      fontSize: 16,
                      fontFamily: 'Roboto'),
                  children: [
                    TextSpan(
                        text: "Terms ",
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 16,
                            fontFamily: 'Roboto')),
                    const TextSpan(text: "and "),
                    TextSpan(
                        text: "Policy",
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 16,
                            fontFamily: 'Roboto')),
                  ]),
            )
          ],
        ),
      ],
    );
  }
}

class LogoIconBuilder extends StatelessWidget {
  const LogoIconBuilder({
    Key? key,
    required this.logo,
    required this.onPressed,
    required this.heroTag,
  }) : super(key: key);
  final Icon logo;
  final VoidCallback onPressed;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: secColor,
      heroTag: heroTag,
      onPressed: onPressed,
      child: SizedBox(
        height: 30,
        child: logo,
      ),
    );
  }
}

class RememberForgot extends StatefulWidget {
  const RememberForgot({Key? key}) : super(key: key);

  @override
  State<RememberForgot> createState() => _RememberForgotState();
}

class _RememberForgotState extends State<RememberForgot> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
              checkColor: mainColor,
              fillColor: MaterialStateProperty.all(secColor),
            ),
            const Text(
              'Remember me',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}


class KotakBuilder extends StatelessWidget {
  const KotakBuilder({
    Key? key,
    required this.obscureText,
    this.prefixedIcon,
    this.hintText,
  }) : super(key: key);
  final bool obscureText;
  final Widget? prefixedIcon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: secColor,
        cursorWidth: 2,
        obscureText: obscureText,
        style: TextStyle(color: secColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.transparent,
          prefixIcon: prefixedIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}
