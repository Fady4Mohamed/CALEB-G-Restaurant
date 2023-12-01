import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class ProductDelivery extends StatelessWidget {
  const ProductDelivery({
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
                'Delivery info',
                style: style.style22(context: context),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                  width: size.width * .7,
                  child: Text(
                    'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                    maxLines: 2,
                    style: style.style14(context: context),
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
