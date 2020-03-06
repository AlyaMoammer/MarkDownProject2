import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
   String email;
   String password;
   TextEditingController _emailTextController = TextEditingController();
   TextEditingController _passwordTextController = TextEditingController();
   final _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool isLogedin = false;
  @override
  void initState() {
    super.initState();
    isSignedIn();
  }
  void isSignedIn() async{
    setState(() {
       loading = true; 
    });
    setState(() {
     loading = false; 
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: Stack(
        children: <Widget>[
             Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Center(child: Form(
                        key: _formKey,
                        child: ListView(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                            padding: const EdgeInsets.all(23.0),
                            child: Container(
                              margin:EdgeInsets.only(  top: 10.0) ,
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                'images/techno.jpg',
                                width: 220.0,
            //                height: 240.0,
                              )),),
                                Padding(
                             padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                             child: Material(
                                 borderRadius: BorderRadius.circular(10.0),
                                 color: Colors.grey.withOpacity(0.2),
                                 elevation: 0.0,
                                 child: Padding(
                                   padding: const EdgeInsets.only(left: 12.0),
                                   child: TextFormField(
                                  onChanged: (value){
                                     email = value;
                                  },   
                                  keyboardType: TextInputType.emailAddress,
                                   controller: _emailTextController,  
                                   decoration: InputDecoration(
                                  border: InputBorder.none,
                                     hintText: "Email",
                                     icon: Icon(Icons.alternate_email),
                                      ),
                                validator: (value){
                                  if(value.isEmpty){
                                    return'please enter a valid email !';
                                  }
                                    return null;
                                   },  ), ),), ),
                          
                           Padding(
                             padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                             child: Material(
                                 borderRadius: BorderRadius.circular(10.0),
                                 color: Colors.grey.withOpacity(0.2),
                                 elevation: 0.0,
                                 child: Padding(
                                   padding: const EdgeInsets.only(left: 12.0),
                                   child: TextFormField(
                                  onChanged: (value){
                                    password = value;
                                  },   
                                  obscureText: true,   
                                   controller: _passwordTextController,  
                                   decoration: InputDecoration(
                                  border: InputBorder.none,
                                     hintText: "Password",
                                     icon: Icon(Icons.lock_outline),
                                      ),
                                validator: (value){
                                  if(value.isEmpty){
                                    return'the password feild cannot be empty';
                                  } 
                                   return null;
                                   },  ), ),), ),

                             Padding(
                               padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                               child: Material(
                                 borderRadius: BorderRadius.circular(20.0),
                                 color: Color.fromARGB(255,230 , 214, 170),
                                // elevation: 0.0,
                                 child: MaterialButton(onPressed: ()async{
                                  //try{
                                  // final user =await  _firebaseAuth.signInWithEmailAndPassword(email: email , password: password);
                                  // if(user != null){
                                   //  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                  // }
                                  //}catch(e){
                                 //   print(e);
                                 // }
                                 },
                                 minWidth: MediaQuery.of(context).size.width,
                                 child: Text("Login" , textAlign: TextAlign.center,
                                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 20.0)
                                ,), )), ),
                           
                              ],
                            )          
                           ],
                          ),
                      ),),
                    ),
                   ),
            Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.9),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

  
  
