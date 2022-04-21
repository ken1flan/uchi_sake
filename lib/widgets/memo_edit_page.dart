import 'package:flutter/material.dart';
import 'package:uchi_sake/models/memo.dart';

class MemoEditPage extends StatefulWidget {
  const MemoEditPage({Key? key}) : super(key: key);

  @override
  State<MemoEditPage> createState() => _MemoEditPageState();
}

class _MemoEditPageState extends State<MemoEditPage> {
  late Memo memo;

  @override
  Widget build(BuildContext context) {
    memo = Memo();
    memo.name = 'おさけのなまえ';
    memo.purchaceStore = 'なんとか酒店';
    memo.tappedOn = DateTime.now();
    memo.keywordsString = '日本酒 純米 原酒 辛口';
    memo.body = 'たいへん美味しかった！';

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
                    "開栓日 ${memo.tappedOn.year}/${memo.tappedOn.month}/${memo.tappedOn.day}"),
                onTap: () async {
                  DateTime? picked = await _selectDate(memo, context);
                  if (picked != null) {
                    setState(() {
                      memo.tappedOn = picked;
                      // TODO: 保存
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
                  // TODO: 保存
                },
              ),
              TextFormField(
                initialValue: memo.purchaceStore,
                key: const ValueKey('memoPurchaseStoreTextField'),
                decoration: const InputDecoration(
                  labelText: '買ったお店',
                ),
                onChanged: (value) {
                  // TODO: 保存
                },
              ),
              TextFormField(
                initialValue: memo.keywordsString,
                key: const ValueKey('memoKeywordsStringTextField'),
                decoration: const InputDecoration(
                  labelText: 'キーワード',
                ),
                onChanged: (value) {
                  // TODO: 保存
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
                  // TODO: 保存
                },
              ),
            ],
          ),
        ));
  }

  Future<DateTime?> _selectDate(Memo memo, BuildContext context) async {
    DateTime initialDate = memo.tappedOn;
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
