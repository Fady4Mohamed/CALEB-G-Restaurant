
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class NoHistoryBoody extends StatelessWidget {
  const NoHistoryBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assats/image/Vector history.png'),
          Text(
            'No history yet',
            style: style.style30(context: context),
          ),
          SizedBox(
            width: size.width * .7,
            child: Text(
              'Hit the orange button downbelow to Create an order',
              style: style.style17(context: context),
            ),
          ),
        ],
      );
  }
}
