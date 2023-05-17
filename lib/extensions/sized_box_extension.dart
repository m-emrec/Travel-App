import 'package:flutter/material.dart';

extension EmotyPadding on num {
  ph() => SizedBox(
        height: toDouble(),
      );
  pw() => SizedBox(
        width: toDouble(),
      );
}
