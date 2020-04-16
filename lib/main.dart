import 'package:flutter/material.dart';
import 'package:app/DialPad.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dialer'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: 
      Column( 
        children: <Widget>[ Row( 
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: RaisedButton( color: Colors.white, 
                child: 
                Text("PHONE", 
                style: TextStyle(color: Colors.red),), 
                onPressed: (){
                print('You tapped on RaisedButton');
                },),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: RaisedButton( color: Colors.black,
                child: 
                Text("CONTACTS", 
                style: TextStyle(color: Colors.red),), 
                onPressed: (){
                print('You tapped on RaisedButton');
                },),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: RaisedButton( color: Colors.black,
                child: 
                Text("FAVOURITES", 
                style: TextStyle(color: Colors.red),), 
                onPressed: (){
                print('You tapped on RaisedButton');
                },),
            ),
            
            
            
        ],
        ),
        SafeArea(
            child:
                DialPad(
                    // enableDtmf: false,
                    backspaceButtonIconColor: Colors.red,
                    
                    makeCall: (number){ 
                        print(number);
                    }
                )
            ),

        ],
      ),
      
      
      
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: <Widget>[
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       RaisedButton(
      //         onPressed: () => dialogs.information(context, '1', '2'),
      //         child: Text('Info'),
      //       )
      //     ],
      //   )
      // ],),
    );
      
    
  }
}
