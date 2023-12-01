import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class Productpolicy extends StatelessWidget {
  const Productpolicy({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * .08),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Return policy',
                style: style.style22(context: context),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                  width: size.width * .7,
                  child: Text(
                      'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                      maxLines: 4,
                      style: style.style14(context: context),
                      overflow: TextOverflow.ellipsis)),
            ],
          ),
        ],
      ),
    );
  }
}
