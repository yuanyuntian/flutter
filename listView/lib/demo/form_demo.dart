import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Theme(
        data: Theme.of(context).copyWith(primaryColor:Colors.black), 
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForM()
            ],
          ),
        )
      )
    );
  }
}

class RegisterForM extends StatefulWidget {
  RegisterForM({Key key}) : super(key: key);

  @override
  _RegisterForMState createState() => _RegisterForMState();
}

class _RegisterForMState extends State<RegisterForM> {

  final registerFormKey = GlobalKey<FormState>();

  String username, password;

  bool autovalidate = false;

  void submitRegisterForm(){

    if (registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Register...')));
    }else{
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: [
          TextFormField (
            decoration: InputDecoration(
              labelText:'Username',
              helperText: ''
            ),
            onSaved: (value){
              this.username = value;
            },
            validator: this.validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField (
            obscureText: true,
            decoration: InputDecoration(
              labelText:'Password',
              // helperText: ''
            ),
            onSaved: (value){
              this.password = value;
            },
            validator: this.validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height:16.0),
          Container(
            width:double.infinity,
            child:RaisedButton(
              onPressed:submitRegisterForm,
              color: Theme.of(context).accentColor,
              child: Text('Register', style:TextStyle(
                color:Colors.white
              )),
              elevation: 0.0
            )
          )
        ],
      )
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement sposl textEditingController = TextEditingController()
    textEditingController.dispose();
    super.dispose();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value){
      //   debugPrint('input $value');
      // },
      onSubmitted: (result){
        debugPrint('submit: $result');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'hello',
        hintText: 'Enter the post title',
        border: InputBorder.none
      ),
    );
  }
}