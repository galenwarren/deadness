import 'dart:async';

import 'package:flutter/material.dart';

class WaitFor<T> extends StatefulWidget {
  const WaitFor({
    super.key,
    required this.value,
    required this.builder,
    this.action,
  });

  final T? value;

  final Widget Function(BuildContext context, T value) builder;

  final FutureOr<void> Function(BuildContext context)? action;

  @override
  State<StatefulWidget> createState() => _WaitForState<T>();
}

class _WaitForState<T> extends State<WaitFor<T>> {
  @override
  void initState() {
    super.initState();
    if (widget.action != null) {
      widget.action!(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = widget.value;
    if (result == null) {
      return const CircularProgressIndicator();
    }
    return widget.builder(context, result);
  }
}
