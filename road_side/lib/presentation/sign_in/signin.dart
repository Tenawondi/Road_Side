import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/application/auth/users/user_bloc.dart';
import 'package:road_side/application/auth/users/user_event.dart';
import 'package:road_side/application/auth/users/user_state.dart';
import 'package:road_side/presentation/sign_in/local_widgets/sign_in_form.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  //FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  _showerrormessega() {
    //SnackBar err =
    _globalKey.currentState!.showSnackBar(SnackBar(content: Text("error")));
  }

  bool _loggedin = false;
  _login(ctx) async {
    setState(() {
      _loggedin = true;
    });

    // final UserEvent loginevent =
    //     UserLogin(User(email: "henockyeyoni@gmail.com", password: "094100"));
    // //print("Workinfffffggggggggggggggggggggggggggggggggg");
    // BlocProvider.of<UserBloc>(ctx).add(loginevent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state is UserOperationFailure) {
            _showerrormessega();

            print("Nope");
          }
          if (state is UsersLoadSuccess) {
            //Navigator.pushNamed(context, PlacesList.routeName);
            print("yess");
          }
        },
        builder: (context, state) {
          return _loginform(context);
        },
      ),
    );
  }

  Widget _loginform(context) {
    return SignInForm();
  }
}
