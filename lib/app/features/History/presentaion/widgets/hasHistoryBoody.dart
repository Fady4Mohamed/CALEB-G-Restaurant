
import 'package:caleb_g/app/features/Home/presentation/widgets/ItemContainer.dart';
import 'package:flutter/material.dart';

class HasHistoryBoody extends StatelessWidget {
  const HasHistoryBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom:20),
      itemCount: 3,
        itemBuilder: (BuildContext contex, int i) {
          return Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ItemContainer(size: size),
          ));
        },
      );
  }
}
