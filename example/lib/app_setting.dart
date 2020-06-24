import 'package:anutil/anutil.dart';
import 'package:anutil_example/test_page.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      app_setting
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 17:23
 */

enum pageName { testPage }

class AppSetting {
  static initRoutePage() {
    FluroUtil.instance.insertRouter(pageName.testPage.toString(),
        PageBuilder((aNUtil) => TestPage(aNUtil)));
  }
}
