import 'dart:convert';

import 'package:uuid/uuid.dart';

Uuid _uuid = const Uuid();

String newRandomId() {
  List<int> buffer = List.filled(16, 0);
  _uuid.v4buffer(buffer);
  String id = base64UrlEncode(buffer);
  id = id.replaceAll('=', '');
  return id;
}
