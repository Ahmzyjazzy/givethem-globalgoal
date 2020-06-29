import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:givethem/presentation/sign_up/components/sign_up_form.dart';
import 'package:givethem/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:givethem/injection.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }
}
