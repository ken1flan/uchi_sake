import 'dart:io';
import 'package:isar/isar.dart';

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
}
