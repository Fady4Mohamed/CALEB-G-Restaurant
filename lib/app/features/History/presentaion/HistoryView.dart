
import 'package:caleb_g/app/features/History/presentaion/widgets/HistoryAppBar.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/HistoryBoody.dart';
import 'package:flutter/material.dart';
class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          HistoryAppBar(size: size),
          Expanded(child: HistoryBoody(iscontain: false, size: size)),
          
        ],
      ),
    );
  }
}
