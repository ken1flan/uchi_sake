import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';

class IsarSupport {
  static void setupAll() {
    isar = Isar.openSync(
        schemas: Common.schemas, directory: applicationDocumentsDirectory.path);
  }

  static void tearDown() {
    isar.writeTxnSync((isar) {
      isar.clearSync();
    });
  }
}
