import 'package:flutter/material.dart';
import 'package:proyek_akhir/page_awal/awal_builder.dart';
import 'package:proyek_akhir/page_awal/signup_page.dart';
import 'package:proyek_akhir/page_next/home_page/home_page.dart';
import '../builder.dart';

import 'package:proyek_akhir/constant.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [mainColor, treColor]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ).copyWith(top: 60),
                child: Column(
                  children: [
                    const Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Username',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    KotakBuilder(
                      obscureText: false,
                      prefixedIcon: Icon(
                        Icons.email,
                        color: secColor,
                      ),
                      hintText: 'Enter your username....',
                    ),
                    const SizedBox(height: 30),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    KotakBuilder(
                      obscureText: false,
                      prefixedIcon: Icon(
                        Icons.vpn_key_rounded,
                        color: secColor,
                      ),
                      hintText: 'Enter your password....',
                    ),
                    const SizedBox(height: 15),
                    const RememberForgot(),
                    const SizedBox(height: 15),
                    ButtonBuilder(
                      context: context,
                      height: 64,
                      width: double.infinity,
                      title: 'Login',
                      colortext: Colors.white,
                      press: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const CupertinoHomepage()));
                      },
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'OR',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Sign in With',
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LogoIconBuilder(
                          logo: const Icon(Icons.facebook_outlined),
                          heroTag: 'facebook',
                          onPressed: () {},
                        ),
                        LogoIconBuilder(
                          logo: const Icon(Icons.mail_outline_rounded),
                          heroTag: 'email',
                          onPressed: () {},
                        ),
                        LogoIconBuilder(
                          logo: const Icon(Icons.apple_outlined),
                          heroTag: 'apple',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    TextInkwellBuilder(
                        context: context,
                        atext: "Don't have an account? ",
                        acolor: Colors.white,
                        btext: "Sign Up.",
                        bcolor: mainColor,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
