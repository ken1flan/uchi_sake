import 'package:flutter/material.dart';
import 'package:uchi_sake/models/memo.dart';

class MemoListPage extends StatefulWidget {
  const MemoListPage({Key? key}) : super(key: key);

  @override
  State<MemoListPage> createState() => _MemoListPageState();
}

class _MemoListPageState extends State<MemoListPage> {
  List<Memo> memos = [];

  void _setTestMemos() {
    for (int i = 0; i < 10; i++) {
      Memo memo = Memo();
      memo.name = "お酒${i.toString()}";
      memo.tappedOn = DateTime.now();
      memo.score = i % 5 + 1;
      memos.add(memo);
    }
  }

  void _createMemo() {
    // TODO: 新規メモ作成ページを表示
  }

  @override
  Widget build(BuildContext context) {
    _setTestMemos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('飲んだお酒のメモ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'To Do',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createMemo,
        tooltip: 'メモを追加します。',
        child: const Icon(Icons.add),
      ),
    );
  }
}
