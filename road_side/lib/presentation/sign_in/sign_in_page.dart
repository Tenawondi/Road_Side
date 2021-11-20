import 'package:road_side/presentation/sign_in/local_widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:road_side/injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 20.0),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // children: [
                  //   BackButton(),
                  // ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                BlocProvider(
                  create: (context) => getIt<SignInFormBloc>(),
                  child: SignInForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
