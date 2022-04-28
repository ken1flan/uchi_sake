import 'dart:io';
import 'package:isar/isar.dart';

part 'memo.g.dart';

@Collection()
class Memo {
  @Id()
  int? id;

  late String name;
  late File? labelImage;
  late File? specImage;
  late File? otherImage;
  late DateTime? tappedOn;
  late List<String>? keywords;
  late String? keywordsString;
  late int? score;
  late String? purchaceStore;
  late String? body;
}
