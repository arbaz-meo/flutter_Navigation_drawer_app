import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/newpage.dart';
void main()
{
  runApp(new myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: defaultTargetPlatform==TargetPlatform.iOS? Colors.deepOrange:null
      ),
      home: homepage(),
      //routes: <String,WidgetBuilder>
      //{
       // "/a":(BuildContext context)=> new newpage("new page"),
      //}

    );
  }
}
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer app"),
        centerTitle: true,
        elevation: defaultTargetPlatform== TargetPlatform.android?5.0 :0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Arbaz"), 
                accountEmail: new Text("arbaz@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: new Text("A"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  child: new Text("Ar"),
                )
              ],
            ),

            new ListTile(
              title: new Text("page one"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: ()
    {
        // Navigator.of(context).pushNamed("/a");
         Navigator.of(context).pop();
         Navigator.of(context).push
           (
             new MaterialPageRoute(builder: (BuildContext context)=>new newpage("page one"))
         );
         
    }


            ),
            new ListTile(
              title: new Text("page two"),
              trailing: new Icon(Icons.arrow_downward),
                onTap: ()
                {
                  // Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).pop();
                  Navigator.of(context).push
                    (
                      new MaterialPageRoute(builder: (BuildContext context)=>new newpage("page two"))
                  );

                }
            ),
            new Divider(),
            new ListTile(
              title: new Text("page one"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            )
          ],
        ),

      ),
      body: new Container(
        child: new Center(
          child: new Text("Drawer app"),
        ),
      ),
    );
  }
}

