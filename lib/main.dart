import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_links/homepage.dart';
import 'package:dynamic_links/loginpage.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
    this.initDynamicLinks();
  }

  void initDynamicLinks() async {
    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLink) async {
      final Uri deepLink = dynamicLink?.link;
      print("deeplink found");
      if (deepLink != null) {
        print(deepLink);

        Get.to(() => LogInPage(title: 'firebase_dynamic_link  navigation'));
      }
    }, onError: (OnLinkErrorException e) async {
      print("deeplink error");
      print(e.message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Demo Home Page'),
    );
  }
}
