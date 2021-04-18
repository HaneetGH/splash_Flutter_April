import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/home.dart';

class Started extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StartedState();
  }

}
class StartedState extends State<Started>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/bg.png'),)
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(children: [

                  Text(
                    "Get Started.",
                    style: TextStyle(fontSize: 28, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "You will need to provide basic information\n             to get exciting offers",
                    style: TextStyle(fontSize: 15, color: Colors.grey,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        onTap: () {},
                        //   controller: password,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 0.0),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0),
                              ),
                            ),
                            labelStyle:
                            TextStyle(fontSize: 15, color: Colors.red),
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding:
                            EdgeInsets.only(top: 10, left: 10),
                            hintText: "Enter Your Full Name",
                            hintStyle:
                            TextStyle(fontSize: 15, color: Colors.red)),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.transparent,
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        onTap: () {},
                        //   controller: password,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 0.0),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0),
                              ),
                            ),
                            labelStyle:
                            TextStyle(fontSize: 15, color: Colors.red),
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding:
                            EdgeInsets.only(top: 10, left: 10),
                            hintText: "Enter Your Email Address",
                            hintStyle:
                            TextStyle(fontSize: 15, color: Colors.red)),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Home()));
                    },
                    child:  Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 300),
                      height: 60,
                   //   margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      padding: EdgeInsets.all(10),
                      color: Colors.transparent,
                      child: Container(

                        //  padding: EdgeInsets.fromLTRB(5, 1, 5, 1),

                          decoration: BoxDecoration(
                              color: Colors.red,
                              //  border: Border.all(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0))),
                          child: new Center(
                              child: Text(
                                'Continue',
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ))),
                    ),
                  ),


                ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[












                    Container(
                        margin: EdgeInsets.only(bottom: 50.0),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Terano ecommerce Pvt Ltd",style: TextStyle(color: Colors.grey),
                        ))
                  ],
                )

              ],
            )











        ));
  }

}