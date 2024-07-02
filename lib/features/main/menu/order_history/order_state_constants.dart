import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class OrderStateConstants {
  static const String orderNow = "Order now";
  static const String process = "Process";
  static const String done = "Done";
  static const String cancel = "Cancel";

  static IconData getIcon(String state) {
    return {
          orderNow: Symbols.menu_book,
          process: Symbols.skillet,
          done: Symbols.done,
          cancel: Symbols.cancel,
        }[state] ??
        Icons.question_mark;
  }
}
