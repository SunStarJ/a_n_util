import 'package:anutil_example/app_setting.dart';
import 'package:anutil_example/test_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:anutil/anutil.dart';

void main() {
  AppSetting.initRoutePage();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {} on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: FluroUtil.instance.buildRoute(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: TPage(),
      ),
    );
  }
}

class TPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: FlatButton(
            onPressed: () {
              ANavigationUtil.push2Page(context, PageName.testPage.toString(),
                  anUtil: ANUtil().putExtra("name", "孙浩").putExtra("age", 28));
            },
            child: Text("测试一下")),
      );
}
