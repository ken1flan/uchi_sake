import 'package:flutter/material.dart';

class MemoSearchPage extends StatefulWidget {
  const MemoSearchPage({Key? key}) : super(key: key);

  @override
  State<MemoSearchPage> createState() => _MemoSearchPageState();
}

class _MemoSearchPageState extends State<MemoSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('検索')),
        body: Center(
          child: Column(children: const [Text('みつかりません')]),
        ));
  }
}
