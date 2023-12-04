

import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class ProfilePayMethod extends StatefulWidget {
  const ProfilePayMethod({
    super.key,
    required this.size,
  });
  
  final Size size;

  @override
  State<ProfilePayMethod> createState() => _ProfilePayMethodState();
}

class _ProfilePayMethodState extends State<ProfilePayMethod> {
  int slected=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: widget.size.width*.1),
      child: Container(
        width: widget.size.width * .8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Radio(value: 1, groupValue: slected, onChanged:(int? i){setState(() {
                  slected=1;
                });}),
                Image.asset('assats/image/Group 69.png',width: widget.size.height * .1),
                Text('Card',style: style.style18(context: context),)
              ],
            ),
            Row(
              children: [
                Radio(value: 2, groupValue: slected, onChanged:(int? i){setState(() {
                  slected=2;
                });}),
                Image.asset('assats/image/Group 68.png',width: widget.size.height * .1),
                SizedBox(
                  width:widget.size.width * .3 ,
                  child: Text('Mobile Money (MTN,VODA)',style: style.style18(context: context),))
              ],
            ),
            Row(
              children: [
                Radio(value: 3, groupValue: slected, onChanged:(int? i){setState(() {
                  slected=3;
                });}),
                Image.asset('assats/image/Group 67.png',width: widget.size.height * .1),
                Text('Pay on delivery',style: style.style18(context: context),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
