import 'package:anutil_example/app_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:anutil/anutil.dart';
import 'package:flutter/material.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      test_page
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/23 9:42
 */
class TestPage extends StatefulWidget with ANUtilRegister {
  int age;
  String name;

  TestPage(ANUtil anUtil) {
    initANUtil(anUtil);
  }

  @override
  State<StatefulWidget> createState() {
    age = getIntExtra("age");
    name = getStringExtra("name");
    print("$name的年龄是$age");
    return _State();
  }
}

class _State extends State<TestPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: FlatButton(
              onPressed: () {
                ANavigationUtil.push2Page(
                        context, PageName.testPage2.toString())
                    .then((value) {
                  print("page is : 1");
                });
              },
              child: Text("1")),
        ),
      );
}
