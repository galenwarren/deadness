import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/widgets/web_view.dart';

class DeadnessPage extends StatefulWidget {
  const DeadnessPage({
    super.key,
    required this.model,
  });

  final CroquetModel model;

  @override
  State<StatefulWidget> createState() => DeadnessPageState();
}

class DeadnessPageState extends State<DeadnessPage> {
  final _webViewKey = GlobalKey<WebViewState>();

  String get _webViewContent {
    final model = jsonEncode(widget.model.deadness.toJson());
    return """
  <!doctype html>
  <html>
  <head>
    <script src="https://storage.googleapis.com/croquet-deadness-board/component.js"></script>
    <script>
      window.addEventListener('message', (event) => {
        const board = document.querySelector('croquet-deadness-board');
        board.setAttribute('model', event.data);
      });
    </script>
  </head>
  <body style="margin: 0;">
    <croquet-deadness-board style="height: 100vh" model='$model' />
  </body>
  </html>
  """;
  }

  void _update() {
    final deadnessJson = jsonEncode(widget.model.deadness.toJson());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _webViewKey.currentState!.postMessage(deadnessJson);
    });
  }

  @override
  void initState() {
    super.initState();
    _update();
  }

  @override
  void didUpdateWidget(covariant DeadnessPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      _update();
    }
  }

  @override
  Widget build(BuildContext context) {
    final content = _webViewContent;
    return WebView(key: _webViewKey, content: content);
  }
}
