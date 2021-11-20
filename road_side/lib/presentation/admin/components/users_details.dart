import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:road_side/presentation/admin/components/cards.dart';
import 'package:road_side/presentation/admin/components/pie_chart.dart';
import 'package:road_side/util/const.dart';

class UsersDetails extends StatefulWidget {
  const UsersDetails({Key? key}) : super(key: key);

  @override
  _UsersDetailsState createState() => _UsersDetailsState();
}

class _UsersDetailsState extends State<UsersDetails>
    with AutomaticKeepAliveClientMixin<UsersDetails> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  elevation: 6.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: "Search users",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      maxLines: 1,
                      //controller: _locationControl
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_searching),
              )
            ],
          ),
          Center(
            child: ResponsiveGridRow(children: [
              ResponsiveGridCol(
                lg: 12,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  margin: EdgeInsets.all(Constants.admin_cards_margin),
                  alignment: Alignment(0, 0),
                  child: Center(child: PieChartScreen()),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  margin: EdgeInsets.all(Constants.admin_cards_margin),
                  height: 150,
                  alignment: Alignment(0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                              elevation: 6.0,
                              child: Column(
                                children: [
                                  IconButton(
                                    iconSize: 60.0,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.people_alt_rounded,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Text('Get Users statstics')
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      margin: EdgeInsets.all(Constants.admin_cards_margin),
                      height: 150,
                      alignment: Alignment(0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                  elevation: 6.0,
                                  child: Column(
                                    children: [
                                      IconButton(
                                        iconSize: 60.0,
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.airport_shuttle_rounded,
                                            color: Colors.orangeAccent),
                                      ),
                                      Text('Get Garages statstics')
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  margin: EdgeInsets.all(Constants.admin_cards_margin),
                  padding: EdgeInsets.all(5.0),
                  height: 150,
                  alignment: Alignment(0, 0),
                  child: Container(
                    child: Row(
                      children: [
                        Center(
                          child: Card(
                              elevation: 6.0,
                              child: Column(
                                children: [
                                  IconButton(
                                    iconSize: 60.0,
                                    onPressed: () {},
                                    icon: Icon(Icons.autorenew,
                                        color: Colors.blueGrey),
                                  ),
                                  Text('helloo View recent transactions')
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  margin: EdgeInsets.all(Constants.admin_cards_margin),
                  padding: EdgeInsets.all(5.0),
                  height: 150,
                  alignment: Alignment(0, 0),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                              elevation: 6.0,
                              child: Column(
                                children: [
                                  IconButton(
                                    iconSize: 60.0,
                                    onPressed: () {},
                                    icon: Icon(Icons.manage_accounts,
                                        color: Colors.redAccent),
                                  ),
                                  Text('Manage Account')
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )
        ]));
  }

  @override
  bool get wantKeepAlive => true;
}
