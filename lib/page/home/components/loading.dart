import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> loading(BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black45,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,

      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Theme(
            data: ThemeData(
              cupertinoOverrideTheme: const CupertinoThemeData(
                brightness: Brightness.light,
              ),
            ),
            child: CupertinoActivityIndicator(
              radius: 12,
              color: Colors.amber.shade200,
              animating: true,
            ),
          ),
          const SizedBox(width: 10),
          Text('Loding...', style: TextStyle(color: Colors.amber.shade200),),
        ],
      ),
    ),
  );
}
