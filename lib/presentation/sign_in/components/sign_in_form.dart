import 'package:flutter/material.dart';
import 'package:givethem/presentation/sign_up/sign_up_page.dart';
import 'package:givethem/presentation/sign_up/components/background.dart';
import 'package:givethem/presentation/sign_up/components/or_divider.dart';
import 'package:givethem/presentation/sign_up/components/social_icon.dart';
import 'package:givethem/presentation/core/already_have_an_account_acheck.dart';
import 'package:givethem/presentation/core/rounded_button.dart';
import 'package:givethem/presentation/core/rounded_input_field.dart';
import 'package:givethem/presentation/core/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:givethem/application/auth/sign_in_form/sign_in_form_bloc.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                  'Invalid email and password combination',
                ),
              ).show(context);
            },
                (_) {
              // TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return Background(
          child: Form(
            autovalidate: state.showErrorMessages,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    height: size.height * 0.35,
                  ),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) => context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => context
                        .bloc<SignInFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                          (_) => null,
                    ),
                  ),
                  RoundedPasswordField(
                    onChanged: (value) => context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)
                    ),
                    validator: (_) => context
                        .bloc<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                          (_) => null,
                    ),
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () {
                      context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent
                            .registerWithEmailAndPasswordPressed(),
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpPage();
                          },
                        ),
                      );
                    },
                  ),
                  OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/icons/google-plus.svg",
                        press: () {
                          context
                              .bloc<SignInFormBloc>()
                              .add(const SignInFormEvent.signInWithGooglePressed());
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
