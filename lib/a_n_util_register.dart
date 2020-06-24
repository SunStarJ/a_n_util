import 'package:anutil/a_n_util.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      a_n_util_register
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 16:41
 */

class ANUtilRegister {
  ANUtil _anUtil;
  ///注入参数方法
  initANUtil(ANUtil u){
    _anUtil = u;
  }
  ///外部获取方法
  bool getBoolExtra(String name) => _anUtil.getBoolExtra(name);

  String getStringExtra(String name) => _anUtil.getStringExtra(name);

  int getIntExtra(String name) => _anUtil.getIntExtra(name);

  double getDoubleExtra(String name) => _anUtil.getDoubleExtra(name);


}
