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

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(Constants.appName),
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Container();
                    },
                  ),
                );
              },
              tooltip: "Notifications",
            ),
          ],
        ),
        drawer: Drawer(
          elevation: 4.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.fromLTRB(10, 0, 180, 20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/userimage.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new EditProfilePage()),
                    );
                  }
                  //=> AutoRouter.of(context).replace(const EditProfilePageRoute())

                  ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SettingsPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: onPageChanged,
          children: [
            MyApp(),
            GarageDetails(),
            UsersDetails(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.airport_shuttle_rounded,
                    size: 24.0,
                  ),
                  color: _page == 0
                      ? Theme.of(context).accentColor
                      : Theme.of(context).textTheme.caption!.color,
                  onPressed: () => {_pageController.jumpToPage(0)},
                ),
                IconButton(
                  icon: Icon(
                    Icons.people_alt_rounded,
                    size: 24.0,
                  ),
                  color: _page == 1
                      ? Theme.of(context).accentColor
                      : Theme.of(context).textTheme.caption!.color,
                  onPressed: () => {_pageController.jumpToPage(1)},
                ),
              ],
            ),
            shape: CircularNotchedRectangle()),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            elevation: 4.0,
            child: Icon(
              Icons.home,
            ),
            onPressed: () => {_pageController.jumpToPage(1)}),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
