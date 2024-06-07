// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'dart:html' as html;

class WebView extends StatefulWidget {
  const WebView({
    super.key,
    required this.content,
  });

  final String content;

  @override
  State<StatefulWidget> createState() => WebViewState();
}

class WebViewState extends State<WebView> {
  final _loaded = Completer();
  late html.IFrameElement _iframe;

  Future<void> postMessage(String message) async {
    await _loaded.future;
    _iframe.contentWindow!.postMessage(message, '*');
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView.fromTagName(
      tagName: 'iframe',
      onElementCreated: (element) {
        _iframe = element as html.IFrameElement;
        _iframe.onLoad.first.then((value) {
          _loaded.complete();
        });
        _iframe.style.border = 'none';
        _iframe.style.height = '100%';
        _iframe.style.width = '100%';
        _iframe.srcdoc = widget.content;
      },
    );
  }
}
