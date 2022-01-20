import 'package:flutter/material.dart';

class PageList extends StatelessWidget {
  const PageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(index.toString()),
          );
        });
  }
}
