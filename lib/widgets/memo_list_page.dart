import 'package:flutter/material.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_edit_page.dart';

class MemoListPage extends StatefulWidget {
  const MemoListPage({Key? key}) : super(key: key);

  @override
  State<MemoListPage> createState() => _MemoListPageState();
}

class _MemoListPageState extends State<MemoListPage> {
  static const star = Icon(
    Icons.star,
    color: Color.fromRGBO(253, 216, 53, 1),
    size: 15,
  );
  List<Memo> memos = [];

  void _setTestMemos() {
    memos = [];
    for (int i = 0; i < 10; i++) {
      Memo memo = Memo();
      memo.name = "お酒${i.toString()}";
      memo.tappedOn = DateTime.now();
      memo.score = i % 5 + 1;
      memos.add(memo);
    }
  }

  void _createMemo(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MemoEditPage(),
        ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _setTestMemos();
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
                            "${memo.tappedOn.year}/${memo.tappedOn.month}/${memo.tappedOn.day}",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            memo.name,
                            style: const TextStyle(fontSize: 20),
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                          Row(
                            children: [
                              for (var i = 1; i <= memo.score; i++) star
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              );
            }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createMemo(context),
        tooltip: 'メモを追加します。',
        child: const Icon(Icons.add),
      ),
    );
  }
}
