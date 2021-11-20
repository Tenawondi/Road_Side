import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomForm();
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    this.steps = [
      Step(
        title: const Text('Garage info'),
        isActive: currentStep >= 0 ? true : false,
        state: StepState.complete,
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.airport_shuttle_rounded),
                labelText: 'user name *',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Garage name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.details),
                labelText: 'Description *',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                return null;
              },
            ),
          ],
        ),
      ),
      Step(
        state: StepState.complete,
        isActive: currentStep >= 1 ? true : false,
        title: const Text('Contact'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.email),
                hintText: 'someone@example.com',
                labelText: 'Email *',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email address of garage';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.phone),
                hintText: '+251-9xxxxxxxx',
                labelText: 'Phone number *',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      Step(
        isActive: currentStep >= 2 ? true : false,
        state: StepState.complete,
        title: const Text('Services and details '),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.home_repair_service),
                labelText: 'Services *',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Garage must provide at least oe service';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.location_city),
                labelText: 'Location *',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Garage must be able to reach at least 1 area';
                }
                return null;
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: _openingHourValue,
                  icon: Icon(Icons.lock_clock_rounded),
                  //elevation: 5,
                  style: TextStyle(color: Colors.black),

                  items:
                      hoursList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "Opening Hour ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),

                  onChanged: (value) {
                    setState(() {
                      _openingHourValue = value;
                    });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.location_city),
                    labelText: 'Location *',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Garage must be able to reach at least 1 area';
                    }
                    return null;
                  },
                ),
                DropdownButton<String>(
                  value: _closingHourValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.black),

                  items:
                      hoursList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "closing Hour ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),

                  onChanged: (value) {
                    setState(() {
                      _closingHourValue = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
      Step(
        state: StepState.complete,
        isActive: currentStep >= 3 ? true : false,
        title: const Text('Finish registration'),
        content: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  print(_serviceValue);
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    ];

    return Center(
        child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stepper(
              controlsBuilder: (BuildContext context,
                  {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: onStepContinue,
                      child: const Text('NEXT'),
                    ),
                    TextButton(
                      onPressed: onStepCancel,
                      child: const Text('Previous'),
                    ),
                  ],
                );
              },
              steps: steps,
              currentStep: currentStep,
              onStepContinue: next,
              onStepCancel: cancel,
            ),
          ),
        ],
      ),
    ));
  }

  int currentStep = 0;
  bool complete = false;
  List<Step> steps = [];
  next() {
    print('conitnue pressed');
    // Validate returns true if the form is valid, or false otherwise.

    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  List<String> servicesList = [
    'Android',
    'IOS',
    'Flutter',
    'Node',
    'Java',
    'Python',
    'PHP',
  ];

  List<String> locationsList = [
    'Wesen',
    'CMC',
    'AYAT',
    'GORO',
  ];
  List<String> hoursList = [
    '0:00',
    '1:00',
    '2:00',
    '3:00',
    '5:00',
    '6:00',
    '7:00',
    '8:00',
    '9:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
    '23:00',
  ];
  String? _serviceValue;
  String? _locationValue;
  String? _openingHourValue;
  String? _closingHourValue;
}

final Map<String, dynamic> formData = {
  'name': null,
  'user_name': null,
  'password': null,
  'description': null,
  'location': [String],
  'contact': {
    'email': null,
    'phone_number': null,
  },
  'opening_hour': null,
  'closing_hour': null,
  'services': [
    String,
  ],
};
