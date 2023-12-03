
import 'package:caleb_g/app/features/History/presentaion/widgets/NoHistoryBoody.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/hasHistoryBoody.dart';
import 'package:flutter/material.dart';

class HistoryBoody extends StatelessWidget {
  const HistoryBoody({super.key, required this.iscontain, required this.size});
  final bool iscontain;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return iscontain
        ? HasHistoryBoody(size: size)
        : NoHistoryBoody(size: size);
  }
}
