import 'package:anutil/page_builder.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      fluro_util
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 16:43
 */
class FluroUtil {
  static Map _routeMap = {};

  Router _router = Router();

  ///注入导航
  FluroUtil insertRouter(String routePath, PageBuilder routePage) {
    _router.define(routePath, handler: routePage.getHandler());
    return this;
  }

  ///创建最终导航
  buildRoute() => _router.generator;

  // 工厂模式
  factory FluroUtil() =>_getInstance();
  static FluroUtil get instance => _getInstance();
  static FluroUtil _instance;
  FluroUtil._internal() {
    // 初始化
  }
  static FluroUtil _getInstance() {
    if (_instance == null) {
      _routeMap.clear();//初始化map
      _instance = new FluroUtil._internal();
    }
    return _instance;
  }
}
