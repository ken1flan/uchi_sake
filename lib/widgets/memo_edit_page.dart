import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uchi_sake/helpers.dart';
import 'package:uchi_sake/models/memo.dart';

class MemoEditPage extends StatefulWidget {
  final Memo? memo;
  const MemoEditPage(this.memo, {Key? key}) : super(key: key);

  @override
  State<MemoEditPage> createState() => _MemoEditPageState();
}

class _MemoEditPageState extends State<MemoEditPage> {
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Memo memo = widget.memo ?? Memo();

    return Scaffold(
        appBar: AppBar(
          title: const Text('飲んだお酒のメモ'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              InkWell(
                child: Text(
                    "開栓日 ${dateTime2yyyymmdd(memo.tappedOn ?? DateTime.now())}"),
                onTap: () async {
                  DateTime? picked = await _selectDate(memo, context);
                  if (picked != null) {
                    setState(() {
                      memo.tappedOn = picked;
                      memo.save();
                    });
                  }
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                initialValue: memo.name,
                key: const ValueKey('memoNameTextField'),
                decoration: const InputDecoration(
                  labelText: '名前',
                ),
                onChanged: (value) {
                  memo.name = value;
                  memo.save();
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 0),
                child: Text(
                  'ラベルの写真',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              memo.labelImage == null
                  ? const Text('画像が選択されていません。')
                  : Image.file(memo.labelImage!),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        final image = _getImageFromCamera();
                        image.then((value) {
                          setState(() {
                            memo.labelImage = value;
                            memo.save();
                          });
                        });
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Icon(Icons.add_a_photo)),
                  OutlinedButton(
                      onPressed: () {
                        final image = _getImageFromGallery();
                        image.then((value) {
                          setState(() {
                            memo.labelImage = value;
                            memo.save();
                          });
                        });
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Icon(Icons.photo_library)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 0),
                child: Text(
                  '成分の写真',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              memo.specImage == null
                  ? const Text('画像が選択されていません。')
                  : Image.file(memo.specImage!),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        final image = _getImageFromCamera();
                        image.then((value) {
                          setState(() {
                            memo.specImage = value;
                            memo.save();
                          });
                        });
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Icon(Icons.add_a_photo)),
                  OutlinedButton(
                      onPressed: () {
                        final image = _getImageFromGallery();
                        image.then((value) {
                          setState(() {
                            memo.specImage = value;
                            memo.save();
                          });
                        });
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Icon(Icons.photo_library)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 0),
                child: Text(
                  'その他の写真',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              memo.otherImage == null
                  ? const Text('画像が選択されていません。')
                  : Image.file(memo.otherImage!),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        final image = _getImageFromCamera();
                        image.then((value) {
                          setState(() {
                            memo.otherImage = value;
                            memo.save();
                          });
                        });
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Icon(Icons.add_a_photo)),
                  OutlinedButton(
                      onPressed: () {
                        final image = _getImageFromGallery();
                        image.then((value) {
                          setState(() {
                            memo.otherImage = value;
                            memo.save();
                          });
                        });
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Icon(Icons.photo_library)),
                ],
              ),
              TextFormField(
                initialValue: memo.purchaceStore,
                key: const ValueKey('memoPurchaseStoreTextField'),
                decoration: const InputDecoration(
                  labelText: '買ったお店',
                ),
                onChanged: (value) {
                  memo.purchaceStore = value;
                  memo.save();
                },
              ),
              TextFormField(
                initialValue: memo.keywordsString,
                key: const ValueKey('memoKeywordsStringTextField'),
                decoration: const InputDecoration(
                  labelText: 'キーワード',
                ),
                onChanged: (value) {
                  memo.keywordsString = value;
                  memo.save();
                },
              ),
              TextFormField(
                initialValue: memo.body,
                key: const ValueKey('memoBodyTextField'),
                decoration: const InputDecoration(
                  labelText: 'メモ',
                ),
                maxLines: 15,
                onChanged: (value) {
                  memo.body = value;
                  memo.save();
                },
              ),
            ],
          ),
        ));
  }

  Future<DateTime?> _selectDate(Memo memo, BuildContext context) async {
    DateTime initialDate = memo.tappedOn ?? DateTime.now();
    DateTime firstDate = DateTime.now().add(const Duration(days: -360));
    DateTime lastDate = DateTime.now().add(const Duration(days: 360));
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate);
    return picked;
  }

  Future<File?> _getImageFromCamera() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    File? imageFile;

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    } else {
      imageFile = null;
    }

    return imageFile;
  }

  Future<File?> _getImageFromGallery() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    File? imageFile;

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    } else {
      imageFile = null;
    }

    return imageFile;
  }
}
