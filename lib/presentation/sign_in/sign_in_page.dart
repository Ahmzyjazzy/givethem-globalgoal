import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:givethem/presentation/sign_in/components/sign_in_form.dart';
import 'package:givethem/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:givethem/injection.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}