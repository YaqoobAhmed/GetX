import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var title;

  ScreenOne({super.key, this.title});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen One " + Get.arguments[1]),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  // Get.to(ScreenTwo());
                  Get.toNamed(
                      "/screenTwo"); //calling page by names using get pages in main
                },
                child: Text("Move to screen two"))));
  }
}
