import 'package:flutter/material.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
class searchbutton extends StatelessWidget {
  const searchbutton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .1, vertical: size.height * .03),
      child: TextButton(
        onPressed: () {
          // search view
        },
        child: SizedBox(
          width: size.width * 0.7,
          height: size.height * .046,
          child: Row(
            children: [
              Icon(
                Icons.search_sharp,
                color: Colors.black,
                size: size.height * .0445,
              ),
              Text(
                '   Search',
                style: style.style17(context: context),
              ),
            ],
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((context) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30));
            }),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 232, 232, 232))),
      ),
    );
  }
}
