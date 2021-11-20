import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/domain/auth/value_objects.dart';
import 'package:road_side/presentation/core/ourContainer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:road_side/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: OurContainer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline), hintText: "Username"),
              autocorrect: false,
              onChanged: (value) {
                username = value;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "Password",
              ),
              obscureText: true,
              autocorrect: false,
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SignInFormBloc>().add(
                      SignInWithUsernameAndPasswordPressed(
                          username: this.username, password: this.password),
                    );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
              onPressed: () {
                context.router.replace(RegisterPageRoute());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  "No account? Register Here",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
