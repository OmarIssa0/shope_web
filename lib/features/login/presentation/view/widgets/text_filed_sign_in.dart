import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/constant/my_validators.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/login/presentation/view/forgot_password_view.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';

class TextFiledSignIn extends StatefulWidget {
  const TextFiledSignIn({
    super.key,
  });

  @override
  State<TextFiledSignIn> createState() => _TextFiledSignInState();
}

class _TextFiledSignInState extends State<TextFiledSignIn> {
  late final _formKey = GlobalKey<FormState>();

  bool obscureText = true;

  late TextEditingController _emailController, _passwordController;

  late final FocusNode _emailFocusNode, _passwordFocusNode;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 24),
          Text(
            'Email Address',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _emailController,
            focusNode: _emailFocusNode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            cursorColor: AppColor.kPrimary500,
            decoration: InputDecoration(
              // hintText: 'Search for anything...',
              hintStyle:
                  AppStyles.styleRegular16(context, color: AppColor.kGray500),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(_passwordFocusNode);
            },
            validator: (value) {
              return MyValidators.emailValidator(value);
            },
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Password',
                style:
                    AppStyles.styleRegular14(context, color: AppColor.kGray900),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordView(),
                    ),
                  );
                },
                child: Text(
                  'Forget Password',
                  style: AppStyles.styleMedium14(context,
                      color: AppColor.kSecondary500),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: obscureText,
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: AppColor.kPrimary500,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon:
                      Icon(obscureText ? IconlyLight.show : IconlyLight.hide)),
              // hintText: 'Search for anything...',
              hintStyle:
                  AppStyles.styleRegular16(context, color: AppColor.kGray500),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
            onFieldSubmitted: (value) {
              _signIn();
            },
            validator: (value) {
              return MyValidators.passwordValidator(value);
            },
          ),
          const SizedBox(height: 24),
          CustomLoginButtonLogin(
            function: () {
              _signIn();
            },
            title: 'SIGN IN',
          ),
        ],
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
