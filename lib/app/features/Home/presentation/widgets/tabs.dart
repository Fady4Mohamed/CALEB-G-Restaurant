import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/listitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class tabs extends StatelessWidget {
  const tabs({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // tab view height
      height: size.height * 0.43,
      child: BlocConsumer<FetchFoodCubit, FetchFoodState>(
        listener: (context, state) {
          if (state is FetchFoodfailer) {
            Fluttertoast.showToast(
                msg: state.error,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }  if (state is FetchFoodsuccsed) {
            Fluttertoast.showToast(
                msg:'Welcome, enjoy buying food',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.greenAccent,
                textColor: Colors.white,
                fontSize: 16.0);
          }
        },
        builder: (context, state) {
          if (state is FetchFoodsuccsed) {
            return TabBarView(children: [
              listitem(
                size: size,
                food: BlocProvider.of<FetchFoodCubit>(context).allfoodlist,
              ),
              listitem(
                size: size,
                food: BlocProvider.of<FetchFoodCubit>(context).onlyfoodlist,
              ),
              listitem(
                size: size,
                food: BlocProvider.of<FetchFoodCubit>(context).onlydrinklist,
              ),
            ]);
          }
          if (state is FetchFoodloding) {
            return TabBarView(children: [
              SizedBox(
                  height: size.height * 0.43,
                  child: Padding(
                    padding: EdgeInsets.all(size.height * 0.15),
                    child: const CircularProgressIndicator(
                        color: AppColors.kMainColor),
                  )),
              SizedBox(
                  height: size.height * 0.43,
                  child: Padding(
                    padding: EdgeInsets.all(size.height * 0.15),
                    child: const CircularProgressIndicator(
                        color: AppColors.kMainColor),
                  )),
              SizedBox(
                  height: size.height * 0.43,
                  child: Padding(
                    padding: EdgeInsets.all(size.height * 0.15),
                    child: const CircularProgressIndicator(
                        color: AppColors.kMainColor),
                  )),
            ]);
          } else {
            return TabBarView(children: [
              SizedBox(
                height: size.height * 0.43,
              ),
              SizedBox(
                height: size.height * 0.43,
              ),
              SizedBox(
                height: size.height * 0.43,
              ),
            ]);
          }
        },
      ),
    );
  }
}
