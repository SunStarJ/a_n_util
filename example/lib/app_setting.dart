import 'package:anutil/anutil.dart';
import 'package:anutil_example/test_page.dart';
import 'package:anutil_example/test_page_2.dart';
import 'package:anutil_example/test_page_3.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      app_setting
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 17:23
 */

enum PageName { testPage, testPage2, testPage3 }

class AppSetting {
  static initRoutePage() {
    FluroUtil.instance.insertRouter(PageName.testPage.toString(),
        PageBuilder((aNUtil) => TestPage(aNUtil)));
    FluroUtil.instance.insertRouter(PageName.testPage2.toString(),
        PageBuilder((aNUtil) => TestPage2(aNUtil)));
    FluroUtil.instance.insertRouter(PageName.testPage3.toString(),
        PageBuilder((aNUtil) => TestPage3(aNUtil)));
  }
}
