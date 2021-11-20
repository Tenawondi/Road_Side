import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_side/application/home_page/home_bloc.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/models/service/ServiceModel.dart';
import 'package:road_side/presentation/core/grid_service.dart';
import '../core/slider_item.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

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
    HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);
    return BlocProvider(
      create: (context) => homeBloc,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is LoadingHomePageState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is LoadedHomePageState) {
            return _homeCard(context, state.garageList, state.serviceList);
          } else {
            return Container(
              child: Center(
                child: Text("Sorry Something went wrong!"),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _homeCard(BuildContext context, List<Garage> garageList,
      List<Service> serviceList) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextButton(
                    child: Text(
                      "View More",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
//TODO -- View More
                    onPressed: () {}),
              ],
            ),
            SizedBox(height: 10.0),
            CarouselSlider(
              items: map<Widget>(
                garageList,
                (index, i) {
                  Garage garage = garageList[index];
                  return SliderItem(
                    img: garage.ImageUrl,
                    name: garage.Name,
                    rating: garage.Rating.toDouble(),
                    review_count: garage.Reviews.length,
                  );
                },
              ).toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.0,
                enlargeCenterPage: true,
              ),
            ),
            SizedBox(height: 20.0),
            GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.25),
                ),
                itemCount: serviceList == null ? 0 : serviceList.length,
                itemBuilder: (BuildContext context, int index) {
                  Service service = serviceList[index];

                  return GridService(
                      name: service.name,
                      img: "assets/garage_default.jpg",
                      rating: 5.0,
                      review_count: 67);
                })
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
