import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List<String> litems = ["1","2","Third","4"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Icon(Icons.notifications,color: Colors.red,),
                            Text(
                              "Thrissur",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                      Container( margin: EdgeInsets.only(left: 5, top: 0),
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "House No 25,Rose Street",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                      ],
                    ),
                   Container(margin:EdgeInsets.only(left: 140),child: Icon(Icons.notifications,color: Colors.red,),),
                    Container(margin:EdgeInsets.only(left: 10,right: 2),child: Icon(Icons.favorite_border_outlined,color: Colors.red,),),
                    Container(margin:EdgeInsets.only(left: 10,right: 1),child: Icon(Icons.qr_code_outlined,color: Colors.red,),),
                  ],

                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,right: 5,top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Card(
                      color: Colors.white,

                      child: Container(
                        margin: EdgeInsets.only(left: 5,right: 5,top: 0),
                        height: 56,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child:  TextFormField(

                          keyboardType: TextInputType.text,
                          onTap: () {},
                          //   controller: password,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    top: 5,
                                    bottom: 5), // add padding to adjust icon
                                child: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                              labelStyle:
                              TextStyle(fontSize: 15, color: Colors.red),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                              EdgeInsets.only(top: 10, left: 10),
                              hintText: " Search by shop or products",
                              hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey)),
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(height: 5,),

              Center(
                child: Container(
                  height: 150.0,
                  width: 400.0,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 5.0,
                    dotIncreasedColor: Colors.black,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                     Image.asset('assets/banner2.png',),
                      Image.asset('assets/subway.png'),
                      Image.asset('assets/domino.jpg'),
                    ],
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 15,right: 5,top: 20),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.near_me,size: 20,
                        color: Colors.red,
                      ),
                      Text("Near By Stores",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),

              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                          Container(
                              margin: EdgeInsets.only(top: 3),
                            child:   Row(

                              children: [
                                Card(
                                  color: Colors.green,
                                  elevation: 10,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child:Row(children: [
                                      Text("5.0",style: TextStyle(color: Colors.white),),
                                      Icon(Icons.star,color: Colors.white,size: 12,)
                                    ],),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                ),
                                // Container(
                                //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //     children: [Text("5.0"),
                                //       Icon(Icons.star)],
                                //   ),
                                // ),
                                Container(child: Text("10Km"),),
                                Container(
                                  margin: EdgeInsets.only(left: 10),


                                  child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                              ],),
                          )


                          ],
                        ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child:   Row(

                                children: [
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child:Row(children: [
                                        Text("5.0",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 12,)
                                      ],),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [Text("5.0"),
                                  //       Icon(Icons.star)],
                                  //   ),
                                  // ),
                                  Container(child: Text("10Km"),),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),


                                    child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                                ],),
                            )


                          ],
                        ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child:   Row(

                                children: [
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child:Row(children: [
                                        Text("5.0",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 12,)
                                      ],),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [Text("5.0"),
                                  //       Icon(Icons.star)],
                                  //   ),
                                  // ),
                                  Container(child: Text("10Km"),),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),


                                    child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                                ],),
                            )


                          ],
                        ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child:   Row(

                                children: [
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child:Row(children: [
                                        Text("5.0",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 12,)
                                      ],),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [Text("5.0"),
                                  //       Icon(Icons.star)],
                                  //   ),
                                  // ),
                                  Container(child: Text("10Km"),),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),


                                    child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                                ],),
                            )

                          ],
                        ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child:   Row(

                                children: [
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child:Row(children: [
                                        Text("5.0",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 12,)
                                      ],),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [Text("5.0"),
                                  //       Icon(Icons.star)],
                                  //   ),
                                  // ),
                                  Container(child: Text("10Km"),),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),


                                    child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                                ],),
                            )


                          ],
                        ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child:   Row(

                                children: [
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child:Row(children: [
                                        Text("5.0",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 12,)
                                      ],),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [Text("5.0"),
                                  //       Icon(Icons.star)],
                                  //   ),
                                  // ),
                                  Container(child: Text("10Km"),),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),


                                    child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                                ],),
                            )

                          ],
                        ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child:  Image.asset("assets/pizza.png",height: 20,width: 20,),
                      ),

                      Container(color: Colors.white,
                        margin: EdgeInsets.only(top: 7),
                        padding:  EdgeInsets.only(top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(


                                child:Container(   margin: EdgeInsets.only(left: 10),child: Text("Subway",style:
                                TextStyle(fontSize: 15,color:
                                Colors.black,fontWeight: FontWeight.bold,),),)),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:  Text("FC#10, Food Court, Second Floor Sobha \nCity Mall,Thrissur "
                                  "- Kunnamkulam Rd...",style: TextStyle(fontSize: 12,color: Colors.grey),),)
                            ,
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child:   Row(

                                children: [
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child:Row(children: [
                                        Text("5.0",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 12,)
                                      ],),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [Text("5.0"),
                                  //       Icon(Icons.star)],
                                  //   ),
                                  // ),
                                  Container(child: Text("10Km"),),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),


                                    child: Text("BUY 1 GET 1 FREE",style: TextStyle(color: Colors.red,fontSize:10,fontWeight: FontWeight.bold),),)
                                ],),
                            )


                          ],
                        ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
