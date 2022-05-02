import 'package:flutter/material.dart';
import 'package:uchi_sake/helpers.dart';
import 'package:uchi_sake/models/memo.dart';

class MemoEditPage extends StatefulWidget {
  final Memo? memo;
  const MemoEditPage(this.memo, {Key? key}) : super(key: key);

  @override
  State<MemoEditPage> createState() => _MemoEditPageState();
}

class _MemoEditPageState extends State<MemoEditPage> {
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
}
