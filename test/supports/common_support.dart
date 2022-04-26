import 'dart:io';
import 'package:uchi_sake/common.dart';

class CommonSupport {
  static void setUpAll() {
    applicationDocumentsDirectory =
        Directory("${Directory.current.path}/tmp/$pid");
    applicationDocumentsDirectory.createSync(recursive: true);
  }

  static void finalize() {
    applicationDocumentsDirectory.deleteSync(recursive: true);
  }
}
