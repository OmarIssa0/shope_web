import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:shope_web/core/constant/my_validators.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';
import 'package:shope_web/features/track_order/presentation/view/widgets/custom_text_filed.dart';

class TextFiledTrackOrder extends StatefulWidget {
  const TextFiledTrackOrder({super.key});

  @override
  State<TextFiledTrackOrder> createState() => _TextFiledTrackOrderState();
}

class _TextFiledTrackOrderState extends State<TextFiledTrackOrder> {
  late TextEditingController _email, _firstName, _lastName, _phone;
  late final FocusNode _emailFocus, _firstFocus, _lastFocus, _phoneFocus;

  late final _fromKey = GlobalKey<FormState>();

  @override
  void initState() {
    _email = TextEditingController();
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _phone = TextEditingController();
    //
    _emailFocus = FocusNode();
    _firstFocus = FocusNode();
    _lastFocus = FocusNode();
    _phoneFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _phone.dispose();
    //
    _emailFocus.dispose();
    _firstFocus.dispose();
    _lastFocus.dispose();
    _phoneFocus.dispose();

    super.dispose();
  }

  String? countryValue, stateValue, cityValue;

  Future<void> _trackOrder() async {
    final isValid = _fromKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _fromKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Billing Information',
            style: AppStyles.styleMedium18(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 24),
          Text(
            'User name',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomTextFiled(
                  textInputAction: TextInputAction.next,
                  controller: _firstName,
                  focusNode: _firstFocus,
                  textInputType: TextInputType.name,
                  title: 'First name',
                  onFieldSubmitted: (p0) {
                    return FocusScope.of(context).requestFocus(_lastFocus);
                  },
                  validator: (p0) {
                    return MyValidators.displayNameValidator(p0);
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomTextFiled(
                  textInputAction: TextInputAction.next,
                  title: 'Last name',
                  controller: _lastName,
                  focusNode: _lastFocus,
                  textInputType: TextInputType.name,
                  onFieldSubmitted: (p0) {
                    return FocusScope.of(context).requestFocus(_emailFocus);
                  },
                  validator: (p0) {
                    return MyValidators.displayNameValidator(p0);
                  },
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomTextFiled(
                  textInputAction: TextInputAction.next,
                  title: 'Email',
                  controller: _email,
                  focusNode: _emailFocus,
                  textInputType: TextInputType.emailAddress,
                  onFieldSubmitted: (p0) {
                    return FocusScope.of(context).requestFocus(_phoneFocus);
                  },
                  validator: (p0) {
                    return MyValidators.emailValidator(p0);
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomTextFiled(
                  textInputAction: TextInputAction.done,
                  controller: _phone,
                  focusNode: _phoneFocus,
                  textInputType: TextInputType.number,
                  onFieldSubmitted: (p0) {
                    setState(() {
                      _trackOrder();
                    });
                  },
                  validator: (p0) {
                    return MyValidators.validateMobile(p0);
                  },
                  title: '',
                  prefix: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '+962',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.kGray600,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'PublicSans',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Address',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 8),
          CSCPicker(
            searchBarRadius: 12,
            cityDropdownLabel: '*City',
            stateDropdownLabel: '*State',
            countryDropdownLabel: '*Country',
            countryFilter: const [CscCountry.Jordan],
            dropdownItemStyle:
                AppStyles.styleMedium12(context, color: AppColor.kGray900),
            selectedItemStyle:
                AppStyles.styleMedium12(context, color: AppColor.kGray900),
            dropdownHeadingStyle:
                AppStyles.styleMedium12(context, color: AppColor.kGray900),
            flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
            onCountryChanged: (value) {
              setState(() {
                countryValue = value;
              });
            },
            onStateChanged: (value) {
              setState(() {
                stateValue = value;
              });
            },
            onCityChanged: (value) {
              setState(() {
                cityValue = value;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 24,
                horizontal: MediaQuery.sizeOf(context).width * .1),
            child: cityValue != null && _fromKey.currentState!.validate()
                ? CustomLoginButtonLogin(
                    title: 'Send order',
                    function: () {
                      _trackOrder();
                    })
                : CustomLoginButtonLogin(
                    color: AppColor.kGray300,
                    title: 'Add your information',
                    function: () {}),
          )
        ],
      ),
    );
  }
}
