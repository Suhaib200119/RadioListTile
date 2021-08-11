import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int groupValue=0;
Color backgroungColorBody=Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Radio List Tile"),
      ),
      body: Container(
        color:backgroungColorBody ,
            child: Column(
              children: [
                buildRadioListTile(1,"Background red"),
                buildRadioListTile(0,"Background white"),
              ],
            )
      ),

    );
  }

  RadioListTile<int> buildRadioListTile(int valueInt,String text) {
    return RadioListTile(
                title:Text(text.toString()) ,
                groupValue: groupValue,
                value: valueInt,
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (int? value) {
                  setState(() {
                    groupValue=value!;
                    backgroungColorBody=groupValue==1?Colors.red:Colors.white;
                  });
                },

              );
  }
}
