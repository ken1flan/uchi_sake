import 'dart:io';
import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';
import 'package:uchi_sake/models/file_converter.dart';

part 'memo.g.dart';

@Collection()
class Memo {
  @Id()
  int? id;

  String? name;
  @FileConverter()
  File? labelImage;
  @FileConverter()
  File? specImage;
  @FileConverter()
  File? otherImage;
  @Index()
  DateTime? tappedOn;
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

  static List<Memo> searchByText(String searchText) {
    var words = searchText.split(' ');
    return isar.memos
        .where(sort: Sort.desc)
        .anyTappedOn()
        .filter()
        .nameContains('')
        .repeat(
            words,
            (wordQ, String word) => wordQ.and().group((q) => q
                .nameContains(word)
                .or()
                .keywordsStringContains(word)
                .or()
                .bodyContains(word)))
        .findAllSync();
  }
}
