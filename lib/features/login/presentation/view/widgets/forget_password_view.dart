import 'package:flutter/material.dart';
import 'package:shope_web/core/constant/my_validators.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_text_and_button.dart';

class BodyForgetPasswordView extends StatefulWidget {
  const BodyForgetPasswordView({
    super.key,
  });

  @override
  State<BodyForgetPasswordView> createState() => _BodyForgetPasswordViewState();
}

class _BodyForgetPasswordViewState extends State<BodyForgetPasswordView> {
  late TextEditingController _emailTextEditingController;

  late final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailTextEditingController = TextEditingController();
    super.initState();
  }

  Future<void> _buttonForget() async {
    final isVialed = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isVialed) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 115),
      child: Form(
        key: _formKey,
        child: Material(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: Container(
            width: 430,
            height: 530,
            decoration: BoxDecoration(
                color: AppColor.kWhite, borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Forget Password',
                          style: AppStyles.styleSemiBold20(context,
                              color: AppColor.kGray900),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          textAlign: TextAlign.center,
                          'Enter the email address or mobile phone number associated with your Clicon account.',
                          style: AppStyles.styleRegular14(context,
                              color: AppColor.kGray600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(
                      // textAlign: TextAlign.start,
                      'Email Address',
                      style: AppStyles.styleRegular14(context,
                          color: AppColor.kGray900),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      cursorColor: AppColor.kPrimary500,
                      controller: _emailTextEditingController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: buildBorder(),
                        enabledBorder: buildBorder(),
                        focusedBorder: buildBorder(),
                      ),
                      onFieldSubmitted: (value) {
                        _buttonForget();
                      },
                      validator: (value) {
                        return MyValidators.emailValidator(value);
                      },
                    ),
                    const SizedBox(height: 24),
                    CustomLoginButtonLogin(
                      title: 'SEND EMAIL',
                      function: () {
                        _buttonForget();
                      },
                    ),
                    const SizedBox(height: 24),
                    RowTextAndButton(
                      title: 'Already have account?',
                      titleButton: 'Sign In',
                      function: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ));
                      },
                    ),
                    const SizedBox(height: 8),
                    RowTextAndButton(
                      title: 'Don’t have account?',
                      titleButton: 'Sign Up',
                      function: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ));
                      },
                    ),
                    const Divider(
                      height: 48,
                      color: AppColor.kGray100,
                    ),
                    SizedBox(
                      // width: 424 - 32,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'You may contact ',
                                style: AppStyles.styleRegular12(context,
                                    color: AppColor.kGray700),
                              ),
                              Text(
                                'Customer Service',
                                style: AppStyles.styleRegular12(context,
                                    color: AppColor.kPrimary500),
                              ),
                              Text(
                                ' for help restoring',
                                style: AppStyles.styleRegular12(context,
                                    color: AppColor.kGray700),
                              ),
                            ],
                          ),
                          Text(
                            'access to your account.',
                            style: AppStyles.styleRegular12(context,
                                color: AppColor.kGray700),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(2),
    borderSide: const BorderSide(
      color: AppColor.kGray100,
    ),
  );
}
