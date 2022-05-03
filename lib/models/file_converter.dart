import 'dart:io';
import 'package:crypto/crypto.dart' as crypto;
import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';

class FileConverter extends TypeConverter<File?, String?> {
  const FileConverter();

  @override
  // ignore: avoid_renaming_method_parameters
  File? fromIsar(String? filePath) {
    if (filePath == null || filePath == '') {
      return null;
    }

    var file = File(filePath);
    if (file.existsSync()) {
      return file;
    } else {
      return null;
    }
  }

  @override
  // ignore: avoid_renaming_method_parameters
  String? toIsar(File? file) {
    if (file == null) {
      return '';
    }

    if (file.parent.path == baseDir.path) {
      return file.path;
    }

    var digest = crypto.md5.convert(file.readAsBytesSync());
    var orgFileName = file.path.split('/').last;
    var nameArray = orgFileName.split('.');
    var newFileName = nameArray.length < 2
        ? digest.toString()
        : digest.toString() + '.' + nameArray.sublist(1).join('.');
    var newFilePath = baseDir.path + '/' + newFileName;
    var existFile = File(newFilePath);
    if (existFile.existsSync()) {
      existFile.deleteSync();
    }
    var newFile = file.copySync(newFilePath);
    return newFile.path;
  }

  Directory get baseDir {
    var baseDir = Directory(applicationDocumentsDirectory.path + '/files');
    if (!baseDir.existsSync()) {
      baseDir.createSync(recursive: true);
    }
    return baseDir;
  }
}
