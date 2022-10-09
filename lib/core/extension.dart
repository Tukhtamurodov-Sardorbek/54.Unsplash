import 'package:flutter/material.dart';

extension WidgetOnTap on Widget {
  Widget onTap(void Function() func) => GestureDetector(
    onTap: func,
    child: this,
  );
}