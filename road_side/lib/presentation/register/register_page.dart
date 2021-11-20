import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/injection.dart';
import 'package:road_side/application/auth/register_form/register_form_bloc.dart';
import 'package:road_side/presentation/register/local_widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              BlocProvider(
                create: (context) => getIt<RegisterFormBloc>(),
                child: RegisterForm(),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
