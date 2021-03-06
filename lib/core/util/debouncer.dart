import 'dart:async';
import 'package:flutter/material.dart';

class Debouncer {
  Duration? delay;
  Timer? _timer;
  late VoidCallback _callback;

  Debouncer({this.delay = const Duration(milliseconds: 500)});

  void debounce(VoidCallback callback) {
    _callback = callback;

    cancel();
    _timer = Timer(delay!, flush);
  }

  bool isActive() {
    return _timer!.isActive;
  }

  void cancel() {
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void flush() {
    _callback();
    cancel();
  }
}