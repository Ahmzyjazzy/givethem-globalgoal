import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:givethem/application/auth/auth_bloc.dart';
import 'package:givethem/injection.dart';
import 'package:givethem/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus.unfocus();
          }
        },
        child: MaterialApp(
          title: 'GiveThem - Global Goals',
          debugShowCheckedModeBanner: false,
          builder: ExtendedNavigator(router: Router()),
          theme: ThemeData.light().copyWith(
            primaryColor: Colors.yellow[800],
            accentColor: Color(0xFF634075),
            backgroundColor: Colors.white,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor:  Color(0xFF634075),
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
