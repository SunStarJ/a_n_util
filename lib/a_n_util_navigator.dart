import 'package:anutil/a_n_util.dart';
import 'package:flutter/cupertino.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      a_n_util_navigator
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 16:56
 */
class ANavigationUtil {
  ///页面跳转
  static Future push2Page(BuildContext context, String path, {ANUtil anUtil}) =>
      Navigator.of(context).pushNamed(path, arguments: anUtil ?? ANUtil());
}
