import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/constant/my_validators.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';

class TextFiledSignUp extends StatefulWidget {
  const TextFiledSignUp({
    super.key,
  });

  @override
  State<TextFiledSignUp> createState() => _TextFiledSignUpState();
}

class _TextFiledSignUpState extends State<TextFiledSignUp> {
  late final _formKey = GlobalKey<FormState>();

  bool obscureText = true;

  late TextEditingController _nameController,
      _emailController,
      _passwordController,
      _reseatPasswordController;

  late final FocusNode _nameFocusNode,
      _emailFocusNode,
      _passwordFocusNode,
      _reseatPasswordFocusNode;

  @override
  void initState() {
    // controller
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _reseatPasswordController = TextEditingController();

    // FocusNode
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _reseatPasswordFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _reseatPasswordController.dispose();

    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _reseatPasswordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
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
            'Name',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _nameController,
            focusNode: _nameFocusNode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            cursorColor: AppColor.kPrimary500,
            decoration: InputDecoration(
              // focusColor: ,
              // hoverColor: AppColor.kDanger700,
              hintStyle:
                  AppStyles.styleRegular16(context, color: AppColor.kGray500),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(_emailFocusNode);
            },
            validator: (value) {
              return MyValidators.displayNameValidator(value);
            },
          ),

          const SizedBox(height: 16),
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
          Text(
            'Password',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: obscureText,
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: AppColor.kPrimary500,
            decoration: InputDecoration(
              hintText: '8+ characters',
              helperStyle:
                  AppStyles.styleRegular14(context, color: AppColor.kGray500),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(obscureText ? IconlyLight.show : IconlyLight.hide),
              ),
              // hintText: 'Search for anything...',
              hintStyle:
                  AppStyles.styleRegular16(context, color: AppColor.kGray500),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(_reseatPasswordFocusNode);
              _signUp();
            },
            validator: (value) {
              return MyValidators.passwordValidator(value);
            },
          ),
          const SizedBox(height: 16),
          Text(
            'Confirm Password',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: obscureText,
            controller: _reseatPasswordController,
            focusNode: _reseatPasswordFocusNode,
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
                icon: Icon(obscureText ? IconlyLight.show : IconlyLight.hide),
              ),
              // hintText: 'Search for anything...',
              hintStyle:
                  AppStyles.styleRegular16(context, color: AppColor.kGray500),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
            onFieldSubmitted: (value) {
              _signUp();
            },
            validator: (value) {
              return MyValidators.repeatPasswordValidator(
                  password: _passwordController.text, value: value);
            },
          ),
          const SizedBox(height: 32),
          CustomLoginButtonLogin(
            title: 'SIGN UP',
            function: () {
              _signUp();
            },
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
