import 'dart:io';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ChoiceImage extends StatefulWidget {
  const ChoiceImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ChoiceImage> createState() => _ChoiceImageState();
}

class _ChoiceImageState extends State<ChoiceImage> {
  File? _file;

  imagepick() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _file = File(image.path);
      BlocProvider.of<UserDataInformationCubit>(context).file = _file;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    String? url = BlocProvider.of<UserDataInformationCubit>(context).url;
    return Padding(
      padding: EdgeInsets.all(widget.size.height * .02),
      child: SizedBox(
        height: widget.size.height * 0.07,
        width: widget.size.width * .186,
        child: GestureDetector(
            onTap: () {
              imagepick();
            },
            child: _file != null
                ? Image.file(
                    _file!,
                  )
                : url != null
                    ? Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(url)),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      )
                    : SizedBox(
                        child: Text('tap to choice your image',
                            style: style.style8(context: context)),
                      )),
      ),
    );
  }
}
