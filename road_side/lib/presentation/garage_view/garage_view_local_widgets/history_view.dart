import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HistoryView());
}

// HistoryView is a StatefulWidget. This allows updating the state of the
// widget when an item is removed.
class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  HistoryViewState createState() {
    return HistoryViewState();
  }
}

class HistoryViewState extends State<HistoryView> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    const title = 'Dismissing Items';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Column(children: [
              Dismissible(
                // Each Dismissible must contain a Key. Keys allow Flutter to
                // uniquely identify widgets.
                key: Key(item),
                // Provide a function that tells the app
                // what to do after an item has been swiped away.
                onDismissed: (direction) {
                  // Remove the item from the data source.
                  setState(() {
                    items.removeAt(index);
                  });

                  // Then show a snackbar.
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('$item dismissed')));
                },
                // Show a red background as the item is swiped away.
                background: Container(color: Colors.red),
                child: ListTile(
                  title: Text(item),
                ),
              ),
              MyCardWidget()
            ]);
          },
        ),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  MyCardWidget() : super();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300,
      height: 200,
      padding: new EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue[100],
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 60),
              title: Text('History', style: TextStyle(fontSize: 30.0)),
              subtitle: Text('This will be where the subtexts will be stored',
                  style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ),
      ),
    ));
  }
}
