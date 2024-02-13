import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/profile/presentation/widgets/ProfileAppBar.dart';
import 'package:caleb_g/app/features/profile/presentation/widgets/ProfileInformBox.dart';
import 'package:caleb_g/app/features/profile/presentation/widgets/ProfilePayMethod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    Color buttoncolor = AppColors.kMainColor;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfileAppBar(size: size),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .1,
                top: size.height * .02,
                bottom: size.height * .01),
            child: Text(
              'Information',
              style: style.style17(context: context),
            ),
          ),
          ProfileInformBox(size: size),
          SizedBox(
            height: size.height * .1,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .1, bottom: size.height * .01),
            child: Text(
              'Payment Method',
              style: style.style17(context: context),
            ),
          ),
          ProfilePayMethod(size: size),
          Spacer(),
          Row(
            children: [
              Spacer(),
              BlocListener<UserDataInformationCubit, UserDataInformationState>(
                listener: (context, state)async {
                   if (state is UserDataInformationloding) {
                      buttoncolor = Colors.amber;
                      setState(() {
                        
                      });
                    }
                    if (state is UserDataInformationfailer) {
                      buttoncolor = const Color.fromARGB(255, 95, 10, 4);
                       setState(() {
                        
                      });
                      await Future.delayed(Duration(seconds: 2));
                      buttoncolor = AppColors.kMainColor;
                       setState(() {
                        
                      });
                    }
                    if (state is UserDataInformationsuccess) {
                      buttoncolor = Colors.green;
                       setState(() {
                        
                      });
                      await Future.delayed(Duration(seconds: 2));
                      buttoncolor = AppColors.kMainColor;
                       setState(() {
                        
                      });
                    }
                  },
                child: CustomeButton(
                  size: size,
                  onPressed: () {
                    BlocProvider.of<UserDataInformationCubit>(context).setimagetoprofile();
                  },
                  titel: 'Update Information',
                  color: buttoncolor,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: size.height * .04,
          )
        ],
      ),
    );
  }
}
