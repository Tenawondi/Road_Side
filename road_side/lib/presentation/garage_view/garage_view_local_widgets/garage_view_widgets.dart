import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class adminLocal extends StatefulWidget {
  adminLocal({Key? key}) : super(key: key);

  @override
  _adminLocalState createState() => _adminLocalState();
}

class _adminLocalState extends State<adminLocal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
      height: 220,
      width: double.maxFinite,
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          print("object");
        },
        child: Card(
          color: Colors.blue[50],
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  profilePicture(),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  name(),
                                  Spacer(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  cancelButton(),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[amount()],
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      color: Colors.transparent,
    );
  }
}

Widget profilePicture() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 10))
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/userimage.png',
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget amount() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          SizedBox(height: 70),
          Icon(
            Icons.phone,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: "+251912345678",
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("tel://251912345678"),
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget cancelButton() {
  return Align(
    alignment: Alignment.topRight,
    child: IconButton(
      icon: Icon(
        Icons.cancel_outlined,
      ),
      onPressed: () {},
    ),
  );
}

Widget name() {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        text: "Name of C",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
              text: "\nInfo",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}
