import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'a_n_util.dart';

/**
 *
 * @ProjectName:    a_n_util
 * @ClassName:      page_builder
 * @Description:    dart文件描述
 * @Author:         孙浩
 * @QQ:             243280864
 * @CreateDate:     2020/6/24 16:48
 */

typedef Widget HandlerFunc(
    BuildContext context, Map<String, List<String>> params);

typedef Widget PageBuilderFunc(ANUtil anUtil);

class PageBuilder {
  final PageBuilderFunc builder;
  HandlerFunc handlerFunc;

  PageBuilder(this.builder) {
    handlerFunc = (ctx, _) => this.builder(
      ModalRoute.of(ctx).settings.arguments as ANUtil,
    );
  }

  Handler getHandler() => Handler(handlerFunc: handlerFunc);
}
