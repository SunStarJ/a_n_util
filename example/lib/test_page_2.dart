
import 'package:anutil/a_n_util.dart';
import 'package:anutil/a_n_util_navigator.dart';
import 'package:anutil/a_n_util_register.dart';
import 'package:anutil_example/app_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      test_page_2
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/28 9:30
 */
class TestPage2 extends StatelessWidget with ANUtilRegister {

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Center(
          child: FlatButton(
            child: Text("2"),
            onPressed: () {
              ANavigationUtil.push2Page(context, PageName.testPage3.toString()).then((value) {
                print("page is : 2");
              });
            },
          ),
        ),
      );

  TestPage2(ANUtil a) {
    initANUtil(a);
  }
}
