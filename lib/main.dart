import 'package:flutter/material.dart';

void main() => runApp(MyApp());
TextEditingController usernamecontroller = new TextEditingController();
TextEditingController passwordcontroller = new TextEditingController();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.lightBlue,
        ),
        body: HelloRectangle(),
      ),
    );
  }
}

class HelloRectangle extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {

    return HelloRectanglestate();
  }

}

  class HelloRectanglestate extends State<HelloRectangle> {
    BuildContext context ;
    String word = "hi";

    @override
    Widget build(BuildContext context) {
      context = context;
      return Center(
          child: Column(
            children: <Container>[
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: usernamecontroller,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      labelStyle: new TextStyle(color: const Color(0xFF424242)),
                    ),


                  )
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelStyle: new TextStyle(color: const Color(0xFF424242)),

                    ),


                  )
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  child: new SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: RaisedButton(
                        child: const Text('LOGIN',
                            style: TextStyle(color: Colors.white)),
                        color: Colors.lightBlue,
                        elevation: 4.0,
                        splashColor: Colors.blueGrey,
                        onPressed: () {
                           // showAlert(usernamecontroller.text, context);
                          //showSnackBar(usernamecontroller.text, context);
                          setState(() {
                            word = usernamecontroller.text;
                          });
                          // Perform some action
                        })
                  )
              ),

              Container(
                  margin: EdgeInsets.all(10),
                  child: new SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: Text("$word")
                  )
              )

            ],
          )
      );
    }
    void showAlert(String username,BuildContext context)
    {
     /* showDialog(
          context: context,
          builder: (_) => new AlertDialog(
            title: new Text("Username"),
            content: new Text(username),
          )
      ); */
      showDialog(context: context, child:
      new AlertDialog(
        title: new Text("Username"),
        content: new Text(username),
        actions: <Widget>[
          FlatButton(onPressed:(){
            Navigator.pop(context);
          }, child: Text("OK"))
        ],

      )
      );
    }

    void showSnackBar(String username,BuildContext context)
    {
      final snackBar = SnackBar(content: Text(username));
      Scaffold.of(context).showSnackBar(snackBar);

    }
}





