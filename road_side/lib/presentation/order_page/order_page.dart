import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:road_side/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/application/order_page/order_page_bloc.dart';
import 'package:road_side/models/garage/GarageModel.dart';

class OrderPage extends StatefulWidget {

  const OrderPage({Key? key, }) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with AutomaticKeepAliveClientMixin<OrderPage> {
  late String location;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final orderPageBloc = BlocProvider.of<OrderPageBloc>(context);
    return Container(
      color: Colors.white54,
      child: Column(

        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
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
                            hintText: "Enter Your Location",
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          maxLines: 1,
                          onChanged: (value){
                            location = value;
                          },
                          //controller: _locationControl
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: EdgeInsets.zero,
                    child: ElevatedButton.icon(
                      autofocus: false,
                      label: Text('Go'),
                      onPressed: () {
                        orderPageBloc.add(SearchGaragePressed(location: location));
                      },
                      icon: Icon(Icons.location_searching),
                      style: ButtonStyle(

                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BlocProvider(
            create: (context) => orderPageBloc,
            child: BlocListener<OrderPageBloc, OrderPageState>(
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Something went wrong"),
                  duration: Duration(seconds: 4),
                ));
              },
              child: BlocBuilder<OrderPageBloc, OrderPageState>(
                builder: (context, state) {
                  if (state is LoadingGaragesOrderPageState) {
                    return _garageLoading();
                  } else if (state is LoadedGaragesOrderPageState) {
                    return _garageCard(context, state.garageList);
                  } else if (state is LoadingGaragesFailedOrderPageState) {
                    return Container();
                  }
                  return Container();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _garageCard(BuildContext context, List<Garage> garageList) {
    return ListView.separated(
      itemCount: garageList.length,
      itemBuilder: (context, index) {
        Garage garage = garageList[index];
        return Container(
          color: Colors.white30,
          child: ListTile(
            leading: CircleAvatar(
              child: garage.ImageUrl.isEmpty ? Image.asset("assets/garage_default.jpg") : Image.network(garage.ImageUrl),
              radius: 30.0,
              backgroundColor: Colors.blue[50],
            ),
            title: Text(
              garage.Name,
              style: TextStyle(fontSize: 22.0, color: Colors.black),
            ),
            subtitle: Text(garage.Rating.toString()),
            trailing: IconButton(
              icon: Icon(Icons.add_ic_call),
              onPressed: () {
                context.router.replace(DetailRoute(garage: garageList[index]));
              },
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 5.0,
          color: Colors.transparent,
        );
      },
    );
  }

  Widget _garageLoading() => Center(child: CircularProgressIndicator());

  @override
  bool get wantKeepAlive => true;
}
