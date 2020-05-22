import 'package:flutter/material.dart';
import 'package:flutter_login2/HomePage.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void validate(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/3,
              child: Image(
                  image: AssetImage("images/bunga3a.jpg")
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50.0),
              child: Text('LOGIN ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.pink),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 60),
              child: Text(
                'Username', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                  controller: usernameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Password', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: RaisedButton(
                    color: Colors.pink,
                    onPressed: (){
                      if(usernameController.text == 'admin' && passwordController.text == 'admin'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(
                          username : usernameController.text.toString(),
                          password : passwordController.text.toString(),
                        )));
                        print('Success Login');
                      }else{
                        showDialog(
                          context: context,builder: (_) => NetworkGiffyDialog(
                            image: Image.asset("images/warning.png"),
                        title: Text('Please Check Your Username and Password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600)),
                          description:  Text('Please Check Username and Password', textAlign: TextAlign.center, style: TextStyle(),),

                          onOkButtonPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(

                            )));
                          },
                        ) );
                      }
                    },
                    child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 18),),
                  ),
                ),
              ),
            ),
            /*FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(
                )));
              },
              child: Text('Sign up', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
            )*/
          ],
        ),
      ),
    );
  }
}



