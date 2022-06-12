import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:uchi_sake/common.dart';
import 'package:uchi_sake/helpers.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_edit_page.dart';

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
              // return Card(child: Text(memo.name));
              return Card(
                child: InkWell(
                  onTap: () => _openMemo(memo, context),
                  onLongPress: () => _deleteMemo(memo, context),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: memo.labelImage == null
                            ? const Image(
                                image: AssetImage('assets/images/1px.png'),
                                width: 64,
                                height: 64,
                                fit: BoxFit.cover,
                              )
                            : Image.file(
                                memo.labelImage!,
                                width: 64,
                                height: 64,
                                fit: BoxFit.cover,
                              ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dateTime2yyyymmdd(memo.tappedOn),
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 15),
                            ),
                            Text(
                              memo.name ?? '',
                              style: const TextStyle(fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                            stars(memo.score),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              );
            }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openMemo(Memo(), context),
        tooltip: 'メモを追加します。',
        child: const Icon(Icons.add),
      ),
    );
  }
}
