import 'package:flutter/material.dart';
import 'package:httpsample/apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenHome(),
    );
  }
}

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _numberInputController = TextEditingController();

  String _getresult = 'Enter Nimber Get Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _numberInputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Please enter a number'),
              ),
              ElevatedButton(
                onPressed: ()async {
                  final _number = _numberInputController.text;
                  // final int _numb = int.parse(_number);
                  // if(_numb==null){
                  //   return;
                  // }
                  final _result =await getresult(number: _number);
                  setState(() {
                    _getresult= _result.triviatext?? 'No data found';
                  });
                },
                child: Text('click here'),
              ),
              Text(_getresult),
            ],
          ),
        ),
      ),
    );
  }
}
