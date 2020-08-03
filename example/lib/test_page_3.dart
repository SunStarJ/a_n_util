import 'package:anutil/a_n_util.dart';
import 'package:anutil/a_n_util_register.dart';
import 'package:anutil_example/app_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      test_page_3
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/28 9:33
 */
class TestPage3 extends StatelessWidget with ANUtilRegister {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: FlatButton(onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName(PageName.testPage.toString()));
          }, child: Text("返回了老铁")),
        ),
      );

  TestPage3(ANUtil a) {
    initANUtil(a);
  }
}
