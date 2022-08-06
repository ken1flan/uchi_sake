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
        appBar: AppBar(title: _searchTextField()),
        body: Center(
          child: Column(children: const [Text('みつかりません')]),
        ));
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
}
