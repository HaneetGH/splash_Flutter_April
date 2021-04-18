import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:splash/get_started.dart';

class Otp_enter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Otp_enterState();
  }

}
class Otp_enterState extends State<Otp_enter>{
  TextEditingController controller = TextEditingController();
  int pinLength = 4;
  bool hasError = false;
  String errorMessage;
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
                  Center(
                    child: Image.asset("assets/logo.png",),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "SLASH  BILLS.  WIN BIG.",
                    style: TextStyle(fontSize: 18, color: Colors.grey,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Enter 4 digit code sent to your number.",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PinCodeTextField(
                    autofocus: true,
                    //  controller: controller,
                    hideCharacter: false,
                    highlight: true,
                    highlightColor: Colors.red,
                    defaultBorderColor: Colors.red,
                    hasTextBorderColor:Colors.red,
                    maxLength: pinLength,
                    hasError: hasError,
                    // maskCharacter: "😎",
                    onTextChanged: (text) {
                      setState(() {
                        hasError = false;
                      });
                    },
                    onDone: (text) {
                      print("DONE $text");
                      print("DONE CONTROLLER ${controller.text}");
                    },
                    pinBoxWidth: 50,
                    pinBoxHeight: 64,
                    hasUnderline: true,
                    wrapAlignment: WrapAlignment.spaceAround,
                    pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                    pinTextStyle: TextStyle(fontSize: 22.0),
                    pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                    pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
                    highlightAnimationBeginColor: Colors.black,
                    highlightAnimationEndColor: Colors.white12,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Started()));
                    },
                    child:  Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
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


                 Container(   margin: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 300),
                   child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Didn't receive code ? "),
                       Text("Resend",style: TextStyle(color: Colors.amberAccent),)
                     ],
                   ),
                 )

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