import 'package:b_coin/core/utils/image_constant.dart';
import 'package:b_coin/core/utils/navigator_service.dart';
import 'package:b_coin/core/utils/validation_functions.dart';
import 'package:b_coin/presentation/login/bloc/login_bloc.dart';
import 'package:b_coin/presentation/login/models/login_model.dart';
import 'package:b_coin/presentation/theme/custom_button_style.dart';
import 'package:b_coin/routes/app_routes.dart';
import 'package:b_coin/widget/custom_elevated_button.dart';
import 'package:b_coin/widget/custom_image_view.dart';
import 'package:b_coin/widget/custom_text_form_field.dart';
import 'package:b_coin/widget/keyboard_unfocus_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:b_coin/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: KeyboardUnfocusWidget(
        context: context,
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
            return SingleChildScrollView(
              child: CustomPaint(
                painter: CurvePainter(),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.v),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 5.v),
                          Container(
                            padding: EdgeInsets.only(top: 2),
                            child: RichText(
                              text: TextSpan(
                                text: 'Bit',
                                style: CustomTextStyles.textStyleNormal14
                                    .copyWith(color: appTheme.deepBlue1),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Coin',
                                    style: CustomTextStyles.textStyleBold15
                                        .copyWith(color: appTheme.deepBlue1),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 65.v),
                      CustomImageView(
                          imagePath: ImageConstant.logo,
                          height: 249.v,
                          width: 242.h),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.h),
                          child: BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "msg_login_with_email".tr,
                                    hintStyle: CustomTextStyles
                                        .bodySmallPoppinsGray50003,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlineDeepPurple,
                                    fillColor: appTheme.whiteA70001);
                              })),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.h),
                          child: BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
                                    hintStyle: CustomTextStyles
                                        .bodySmallPoppinsGray50003,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlineDeepPurple,
                                    fillColor: appTheme.whiteA70001);
                              })),
                      SizedBox(height: 16.v),
                      Text("msg_forgot_your_password".tr,
                          style: CustomTextStyles
                              .bodySmallPoppinsOnSecondaryContainer12),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                          height: 58.v,
                          text: "lbl_login".tr,
                          margin: EdgeInsets.symmetric(horizontal: 22.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientPrimaryToBlueADecoration,
                          onPressed: () {
                            onTapLogin(
                                context, state.emailController?.text.trim());
                          }),
                      SizedBox(height: 16.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_have_an_account2".tr,
                                style:
                                    CustomTextStyles.bodySmallPoppinsff9c9a9a),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                style:
                                    CustomTextStyles.bodySmallPoppinsff0f57e3)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(
                        height: 30.v,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    )));
  }

  /// Navigates to the mayiknowScreen when the action is triggered.
  onTapLogin(BuildContext context, username) async {
    if (_formKey.currentState!.validate()) {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
      await PrefUtils().setUserName(username);
      NavigatorService.pushNamed(
        AppRoutes.homePage,
      );
    }
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white; // Wave color

    Path path = Path();

    // Top left curved wave
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.4,
        size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.6, size.width, size.height * 0.5);

    // Bottom right curved wave
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
