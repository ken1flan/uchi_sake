import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_edit_page.dart';
import 'package:uchi_sake/widgets/memo_card.dart';

class MemoListPage extends StatefulWidget {
  const MemoListPage({Key? key}) : super(key: key);

  @override
  State<MemoListPage> createState() => _MemoListPageState();
}

class _MemoListPageState extends State<MemoListPage> {
  List<Memo> memos = [];

  void _openMemo(Memo memo, BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MemoEditPage(memo),
        ));
    setState(() {});
  }

  void _deleteMemo(Memo memo, BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Text('「${memo.name}」を削除しますか？'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('いいえ'),
              ),
              TextButton(
                onPressed: () async {
                  setState(() {
                    memo.destroy();
                  });
                  Navigator.of(context).pop();
                },
                child: const Text('はい'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    memos = isar.memos.where(sort: Sort.desc).anyTappedOn().findAllSync();

    return Scaffold(
      appBar: AppBar(
        title: const Text('飲んだお酒のメモ'),
      ),
      body: memos.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('まだありません。'),
                ],
              ),
            )
          : ListView(
              children: memos.map((Memo memo) {
              return MemoCard(memo,
                  onTap: () => _openMemo(memo, context),
                  onLongPress: () => _deleteMemo(memo, context));
            }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openMemo(Memo(), context),
        tooltip: 'メモを追加します。',
        child: const Icon(Icons.add),
      ),
    );
  }
}
