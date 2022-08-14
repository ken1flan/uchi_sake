import 'package:flutter/material.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_card.dart';
import 'package:uchi_sake/widgets/memo_edit_page.dart';

class MemoSearchPage extends StatefulWidget {
  const MemoSearchPage({Key? key}) : super(key: key);

  @override
  State<MemoSearchPage> createState() => _MemoSearchPageState();
}

class _MemoSearchPageState extends State<MemoSearchPage> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    List<Memo> memos = Memo.searchByText(searchText);

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
    return TextField(
      autofocus: true,
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        hintText: '検索',
      ),
      onSubmitted: (String searchText) {
        setState(() {
          this.searchText = searchText;
        });
      },
      key: const ValueKey('searchTextField'),
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
