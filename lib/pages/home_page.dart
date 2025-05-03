import 'package:d5_7_12/pages/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.to(SecondPage());
                  },
                  child: Hero(
                    tag: "img-1",
                    child: Image.asset(
                      "assets/img.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
