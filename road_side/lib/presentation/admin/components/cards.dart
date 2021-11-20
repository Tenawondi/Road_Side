import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InfoCards extends StatefulWidget {
  
  @override
  _InfoCardsState createState() => _InfoCardsState();
}

class _InfoCardsState extends State<InfoCards>

    with AutomaticKeepAliveClientMixin<InfoCards> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    
    return Container(
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
                      icon: Icon(Icons.people_alt_rounded),
                    ),
                    Text('Get Users statstics')
                  ],
                )),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
