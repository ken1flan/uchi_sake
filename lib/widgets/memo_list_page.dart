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

  void _openMemo(Memo? memo, BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MemoEditPage(),
        ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    memos = isar.memos.where().findAllSync();

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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Image(
                            image: AssetImage('assets/images/1px.png'),
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                          )),
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
                              memo.name,
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
        onPressed: () => _openMemo(null, context),
        tooltip: 'メモを追加します。',
        child: const Icon(Icons.add),
      ),
    );
  }
}
