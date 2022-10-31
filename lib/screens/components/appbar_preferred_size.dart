import 'package:flutter/material.dart';

// 변수 형태가 성능에 유리
PreferredSize appBarBottomLine = const PreferredSize(
  preferredSize: Size.fromHeight(0.5),
  child: Divider(
    thickness: 0.5,
    height: 0.5,
    color: Colors.grey,
  ),
);

// 기존 메소드 형태
// PreferredSize appBarBottomLine() {
//   var height = 0.5;
//
//   return PreferredSize(
//     preferredSize: Size.fromHeight(height),
//     child: Divider(
//       thickness: height,
//       height: height,
//       color: Colors.grey,
//     ),
//   );
// }
