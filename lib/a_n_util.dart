/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      a_n_util
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 16:42
 */
class ANUtil {
  Map _params = {};

  Map get params => _params;

  ///使用完整的map注入参数
  ANUtil initParams(Map params) {
    this._params = _params;
    return this;
  }

  ///添加任意类型参数
  ANUtil putExtra(String name, Object value) {
    _params.addAll({name: value});
    return this;
  }

  ///添加int参数
  ANUtil putIntExtra(String name, int value) {
    _params.addAll({name: value});
    return this;
  }

  ///添加string 参数
  ANUtil putStringExtra(String name, String value) {
    _params.addAll({name: value});
    return this;
  }

  ///添加double参数
  ANUtil putDoubleExtra(String name, double value) {
    _params.addAll({name: value});
    return this;
  }

  ///添加bool参数
  ANUtil putBoolExtra(String name, bool value) {
    _params.addAll({name: value});
    return this;
  }

  ///获取int参数
  int getIntExtra(String name) {
    if (_params == null) {
      print("ANUtil=============>_params不存在呦，亲！");
      return null;
    }
    if (_params[name] == null) {
      print("ANUtil=============>$name不存在呦，亲！");
      return null;
    }
    if (!(_params[name] is int)) {
      print("ANUtil=============>$name类型转换异常呦，亲！");
      return null;
    }
    return _params[name] as int;
  }

  ///获取bool参数
  bool getBoolExtra(String name) {
    if (_params == null) {
      print("ANUtil=============>_params不存在呦，亲！");
      return null;
    }
    if (_params[name] == null) {
      print("ANUtil=============>$name不存在呦，亲！");
      return null;
    }
    if (!(_params[name] is bool)) {
      print("ANUtil=============>$name类型转换异常呦，亲！");
      return null;
    }
    return _params[name] as bool;
  }

  ///获取double参数
  double getDoubleExtra(String name) {
    if (_params == null) {
      print("ANUtil=============>_params不存在呦，亲！");
      return null;
    }
    if (_params[name] == null) {
      print("ANUtil=============>$name不存在呦，亲！");
      return null;
    }
    if (!(_params[name] is double)) {
      print("ANUtil=============>$name类型转换异常呦，亲！");
      return null;
    }
    return _params[name] as double;
  }

  ///获取string 参数
  String getStringExtra(String name) {
    if (_params == null) {
      print("ANUtil=============>_params不存在呦，亲！");
      return null;
    }
    if (_params[name] == null) {
      print("ANUtil=============>$name不存在呦，亲！");
      return null;
    }
    if (!(_params[name] is String)) {
      print("ANUtil=============>$name类型转换异常呦，亲！");
      return null;
    }
    return _params[name] as String;
  }
}
