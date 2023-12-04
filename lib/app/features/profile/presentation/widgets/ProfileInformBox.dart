import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class ProfileInformBox extends StatelessWidget {
  const ProfileInformBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * .1),
      child: Container(
        height: size.height * .16,
        width: size.width * .8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(size.height * .02),
              child: Image.asset(
                'assats/image/Rectangle 6.png',
                height: size.height * 0.07,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Thelma Sara-bear',
                  style: style.style18(context: context),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: size.width * .5,
                  child: Text(
                    'thelma_sara-bear@gmail.com',
                    style: style.style8(context: context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: size.width * .5,
                  child: Text(
                    'Trasaco hotel, behind navrongo campus',
                    style: style.style8(context: context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
