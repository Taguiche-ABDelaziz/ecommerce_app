import 'package:ecommerce/core/function/chekinternet.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // ignore: prefer_typing_uninitialized_variables
  var res;

  instialdata() async {
    res = await checkInternet();
    // ignore: avoid_print
    print(res);
  }

  @override
  void initState() {
    instialdata();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('test')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [Lottie.asset("assets/images/three.json")]),
      ),
    );
  }
}
