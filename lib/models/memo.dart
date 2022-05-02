import 'dart:io';
import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';

part 'memo.g.dart';

@Collection()
class Memo {
  @Id()
  int? id;

  String? name;
  File? labelImage;
  File? specImage;
  File? otherImage;
  DateTime? tappedOn;
  List<String>? keywords;
  String? keywordsString;
  int? score;
  String? purchaceStore;
  String? body;
  late DateTime createdAt;
  late DateTime updatedAt;

  void save() {
    updatedAt = DateTime.now();
    if (id == null) {
      createdAt = updatedAt;
    }
    isar.writeTxnSync((isar) {
      id = isar.memos.putSync(this);
    });
  }

  void destroy() {
    if (id == null) {
      return;
    } else {
      isar.writeTxnSync((isar) {
        isar.memos.deleteSync(id!);
      });
    }
  }
}
