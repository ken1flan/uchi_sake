import 'package:flutter/material.dart';
import 'package:uchi_sake/helpers.dart';
import 'package:uchi_sake/models/memo.dart';

class MemoCard extends Card {
  final Memo memo;

  MemoCard(this.memo,
      {void Function()? onTap, void Function()? onLongPress, super.key})
      : super(
          child: InkWell(
            onTap: () => onTap?.call(),
            onLongPress: () => onLongPress?.call(),
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
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
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
}
