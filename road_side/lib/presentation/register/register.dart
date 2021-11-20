import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/presentation/core/ourContainer.dart';
import 'package:road_side/presentation/register/local_widgets/register_form.dart';
//import 'package:flutter_tourist_helper/bloc/user_bloc.dart';
// import 'package:flutter_tourist_helper/bloc/user_event.dart';
// import 'package:flutter_tourist_helper/models/models.dart';

//import '../place_routes.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/signup';
  //final UserArgument args;
  //SignUp({this.args});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  //FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  GlobalKey<ScaffoldState> _scafoldState = GlobalKey<ScaffoldState>();
  bool _loggedin = false;
  _signup(ctx) async {
    setState(() {
      _loggedin = true;
    });
    // if(_passwordController.text != _confirmpasswordController.text){
    //   _scafoldState.currentState.showSnackBar(SnackBar(content: Text("Password Do Not Match")));
    //   _confirmpasswordController.clear();
    //   return ;

    // }

    // try {

    //   UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
    //     email: _emailController.text.trim(),
    //     password: _passwordController.text.trim()
    //   );

    //   await _firebaseAuth.currentUser.updateProfile(displayName: _nameController.text);
    //   _scafoldState.currentState.showSnackBar(SnackBar(content: Text("Account Created Succesfully")));
    //   _nameController.clear();
    //   _passwordController.clear();
    //   _emailController.clear();
    //   _confirmpasswordController.clear();

    // } catch (e) {
    //   _scafoldState.currentState.showSnackBar(SnackBar(content: Text(e.toString())));
    //   setState(() {
    //   _loggedin = false;
    // });
    // }
    // UserEvent signupevent = UserCreate(
    //     User(
    //       email: "fas",
    //       phone: "09341235643",
    //       isAdmin: false,
    //       name: "Fasika",
    //       password: "096464"
    //     )

    // );

    // BlocProvider.of<UserBloc>(ctx).add(signupevent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldState,
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(child: RegisterForm()),
    );
  }
}
