import 'package:flutter/material.dart';

extension WidgetPaddingX on Widget {
  Widget onTap(void Function() func) => GestureDetector(
    onTap: func,
    child: this,
  );
}