import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/application/auth/auth_bloc.dart';
import 'package:road_side/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              print("I am authenticated");
            },
            unauthenticated: (_) {
              context.router.replace(SignInPageRoute());
              print("Pushed to signin");
              //AutoRouter.of(context).replace(const SignInPageRoute()),
            });
      },
      child: Scaffold(
        body: Center(
          child: IconButton(
            icon: Icon(Icons.build,size: 70,),
            onPressed: () {
              authBloc..add(AuthEvent.authCheckRequested());
            },
          ),
        ),
      ),
    );
  }
}
