import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:road_side/presentation/admin/components/add_garage_screen.dart';
import 'package:road_side/presentation/admin/components/users_details.dart';
import 'package:road_side/presentation/admin/components/garages_details.dart';
import 'package:road_side/presentation/profile/profile_screen.dart';
import 'package:road_side/presentation/setting/setting_screen.dart';
import 'package:road_side/util/const.dart';
import 'package:road_side/presentation/routes/router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

class OnGoingScreen extends StatefulWidget {
  const OnGoingScreen({Key? key}) : super(key: key);

  @override
  _OnGoingScreenState createState() => _OnGoingScreenState();
}

class _OnGoingScreenState extends State<OnGoingScreen> {
  @override
  Widget build(BuildContext context) {
    if (orders.length > 0) {
      return SafeArea(
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            var order = orders[index];
            return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(40))),
                color: Colors.blueGrey[100],
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      cardWidget(order),
                      Dismissible(
                        key: Key(order['order_id']),
                        onDismissed: (direction) {
                          // Remove the item from the data source.
                          setState(() {
                            orders.removeAt(index);
                          });
                          onMarkAsCompletePressed(order['order_id']);

                          // Then show a snackbar.
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Order marked as Completed')));
                        },
                        // Show a red background as the item is swiped away.
                        background: Container(color: Colors.red[900]),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 20.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  primary: Colors.red[900]),
                              onPressed: () => {},
                              child: Text('Mark as complete')),
                        ),
                      )
                    ])));
          },
        ),
      );
    }
    return Center(
      child: Card(
        child: Text('There are no ongoing services'),
      ),
    );
  }

  List orders = [
    {
      'order_id': '1M78893QW',
      'user_id': {'name': 'ayantu', 'phone_number': '0922987865'},
      'issued_date': 'oct 23 9:00pm',
      'service_id': {'name': 'quick fix'},
      'description': 'Toyota xx 1990 model, tire blew up',
    },
    {
      'order_id': '2Z78893QW',
      'user_id': {'name': 'ayantu', 'phone_number': '0922987865'},
      'issued_date': 'oct 23 9:00pm',
      'service_id': {'name': 'quick fix'},
      'description': 'Toyota xx 1990 model, tire blew up',
    },
    {
      'order_id': '3X78893QW',
      'user_id': {'name': 'ayantu', 'phone_number': '0922987865'},
      'issued_date': 'oct 23 9:00pm',
      'service_id': {'name': 'quick fix'},
      'description': 'Toyota xx 1990 model, tire blew up',
    },
  ];
}

Widget cardWidget(order) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          color: Colors.blueGrey[100],
          child: (Container(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 30,
                    child: Center(
                      child: Text(
                        'Order id ' + order['order_id'],
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 26,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(''),
                      // fit: BoxFit.fitHeight,
                      // width: 30.0,
                      // height: 30.0,
                      // color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Customer name: ' + order['user_id']['name'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'MavenPro',
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Status  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'MavenPro',
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'In progress',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'MavenPro',
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Issued on ' + order['issued_date'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'MavenPro',
                                fontSize: 17),
                          ),
                        ],
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.call,
                            size: 40.0,
                            color: Colors.green,
                          ),
                          onPressed: () => {
                                launch(
                                    "tel://" + order['user_id']['phone_number'])
                              }),
                    ]),
              ),
            ],
          )))));
}

onMarkAsCompletePressed(orderIdToDelete) {
  print('call pressed' + orderIdToDelete);
}
