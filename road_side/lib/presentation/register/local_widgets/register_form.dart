import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/application/auth/users/user_bloc.dart';
import 'package:road_side/application/auth/users/user_event.dart';
import 'package:road_side/models/user/UserModel.dart';
import 'package:road_side/presentation/core/ourContainer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:road_side/presentation/routes/router.gr.dart';
import 'package:road_side/presentation/sign_in/signin.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

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
                "Sign Up",
                style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined), hintText: "Email"),
              autocorrect: false,

              // validator: (_) => context
              //     .read<RegisterFormBloc>()
              //     .state
              //     .emailAddress
              //     .value
              //     .fold(
              //       (f) => f.maybeMap(
              //           invalidEmail: (_) => 'Invalid Email',
              //           orElse: () => null),
              //       (_) => null,
              //     ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                hintText: "First Name",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                hintText: "Last Name",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.call),
                hintText: "Phone Number",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                hintText: "Username",
              ),
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

              // validator: (_) =>
              //     context.read<RegisterFormBloc>().state.password.value.fold(
              //           (f) => f.maybeMap(
              //               shortPassword: (_) => 'Short Password',
              //               // mustContainCapital: (_) =>
              //               //     'Password must contain Capital Letter',
              //               // mustContainDigit: (_) =>
              //               //     'Password must contain Digit',
              //               orElse: () => null),
              //           (_) => null,
              //         ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "Confirm Password",
              ),
              obscureText: true,
              autocorrect: false,

              // validator: (_) =>
              //     context.read<RegisterFormBloc>().state.confirmPassword.value.fold(
              //           (f) => f.maybeMap(
              //           shortPassword: (_) => 'Short Password',
              //           // mustContainCapital: (_) =>
              //           // 'Password must contain Capital Letter',
              //           // mustContainDigit: (_) =>
              //           // 'Password must contain Digit',
              //           orElse: () => null),
              //           (_) => null,
              //     ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                UserEvent signupevent = UserCreate(User(
                    EmailAddress: "email@gmail.com",
                    PhoneNumber: "0934540217",
                    Username: "username",
                    Role: "user",
                    FirstName: "Fname",
                    LastName: "Abebe",
                    Password: "096464"));

                BlocProvider.of<UserBloc>(context).add(signupevent);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: const Text(
                  "Sign Up",
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
                context.router.replace(SignInPageRoute());
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (BuildContext ctx) {
                //   return SignInPage();
                // }));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: const Text(
                  "Already have an account? SignIn Here",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
