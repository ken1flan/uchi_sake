import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uchi_sake/models/memo.dart';

late Directory applicationDocumentsDirectory;
late Isar isar;

class Common {
  static var schemas = [MemoSchema];

  static Future<void> initialize() async {
    applicationDocumentsDirectory = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      schemas: schemas,
      directory: applicationDocumentsDirectory.path,
    );
  }

  // 書き込み確認
  static void addSampleMemo() {
    for (int i = 0; i < 10; i++) {
      Memo memo = Memo();
      memo.name = "お酒${i.toString()}";
      memo.tappedOn = DateTime.now();
      memo.score = i % 5 + 1;
      memo.purchaceStore = "なんとか酒店${i.toString()}号店";
      memo.tappedOn = DateTime.now();
      memo.keywords = ['日本酒', '純米' '原酒' '辛口' "${i.toString()}回目"];
      memo.keywordsString = "日本酒 純米 原酒 辛口 ${i.toString()}回目";
      memo.body = "${i.toString()}回目！今回kもたいへん美味しかった！";
      isar.writeTxnSync((isar) => {memo.id = isar.memos.putSync(memo)});
    }
  }
}
