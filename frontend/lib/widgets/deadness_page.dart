import 'package:flutter/material.dart';
import 'package:frontend/state/model.dart';

class DeadnessPage extends StatefulWidget {
  const DeadnessPage({
    super.key,
    required this.match,
  });

  final CroquetMatch match;

  @override
  State<StatefulWidget> createState() => _DeadnessPageState();
}

class _DeadnessPageState extends State<DeadnessPage> {
  // final _webViewController = WebViewController();

  @override
  void initState() {
    super.initState();
//     _webViewController.loadHtmlString("""
// <!doctype html>
// <html>
//   <head>
//     <script src="https://storage.googleapis.com/croquet-deadness-board/component.js"></script>
//   </head>
//   <body style="margin: 0;">
//     <croquet-deadness-board style="height: 100vh" />
//   </body>
// </html>
// """);
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('board'),
    );
  }
}
