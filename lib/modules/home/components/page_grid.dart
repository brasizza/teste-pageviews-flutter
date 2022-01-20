import 'package:flutter/material.dart';

class PageGrid extends StatelessWidget {
  const PageGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Text(index.toString()),
        );
      },
    );
  }
}
