import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_card.dart';
import 'package:uchi_sake/widgets/memo_edit_page.dart';

class MemoSearchPage extends StatefulWidget {
  const MemoSearchPage({Key? key}) : super(key: key);

  @override
  State<MemoSearchPage> createState() => _MemoSearchPageState();
}

class _MemoSearchPageState extends State<MemoSearchPage> {
  @override
  Widget build(BuildContext context) {
    List<Memo> memos =
        isar.memos.where(sort: Sort.desc).anyTappedOn().findAllSync();

    return Scaffold(
      appBar: AppBar(title: _searchTextField()),
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
    );
  }

  Widget _searchTextField() {
    return const TextField(
      autofocus: true,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: '検索',
      ),
    );
  }

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
}
