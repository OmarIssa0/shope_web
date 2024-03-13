import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_list_tile_and_list_view.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';
import 'package:shope_web/features/login/presentation/view_model/model/user_model.dart';
import 'package:shope_web/features/login/presentation/view_model/provider/user_provider.dart';
import 'package:shope_web/loading_manger.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
// with AutomaticKeepAliveClientMixin
{
  // @override
  // bool get wantKeepAlive => true;
  User? user = FirebaseAuth.instance.currentUser;
  UserModel? userModel;

  bool isLoading = true;

  Future<void> fetchUserInfo() async {
    if (user == null) {
      setState(() {
        isLoading = false;
      });
      return;
    }
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      userModel = await userProvider.fetchUserInfo();
    } catch (e) {
      log(e.toString());
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    fetchUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return Container(
      width: MediaQuery.sizeOf(context).width * .6,
      color: AppColor.kSecondary700,
      child: Column(
        children: [
          const SizedBox(height: 40),
          userModel == null
              ? const SizedBox.shrink()
              : LoadingMangerView(
                  isLoading: isLoading,
                  child: ListTile(
                    leading:
                        //  userModel?.userImage == '' ?

                        const Icon(IconlyBold.profile,
                            size: 32, color: AppColor.kWhite),
                    // : Image.network(userModel!.userImage),
                    title: userModel == null
                        ? const SizedBox.shrink()
                        : userModel?.userName == null
                            ? const SizedBox.shrink()
                            : FittedBox(
                                alignment: Alignment.topLeft,
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  userModel!.userName,
                                  style: AppStyles.styleMedium14(context,
                                      color: AppColor.kWhite),
                                ),
                              ),
                    subtitle: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                      child: userModel == null
                          ? const SizedBox.shrink()
                          : Text(
                              userModel!.userEmail,
                              style: AppStyles.styleRegular12(context,
                                  color: AppColor.kWhite),
                            ),
                    ),
                  ),
                ),
          const Divider(
            thickness: .3,
            color: AppColor.kGray300,
          ),
          const SizedBox(height: 10),
          const ListViewListTile(),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomLoginButtonLogin(
              title: user == null ? 'Login' : 'Logout',
              function: () async {
                if (user == null) {
                  Navigator.pushReplacementNamed(context, LoginView.idPage);
                } else {
                  await FirebaseAuth.instance.signOut();
                  if (!mounted) return;
                  Navigator.pushReplacementNamed(context, LoginView.idPage);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
