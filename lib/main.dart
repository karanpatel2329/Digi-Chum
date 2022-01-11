// @dart=2.9
import 'package:digi_chum/widgets/circle.dart';
import 'package:digi_chum/widgets/fadeAnimation.dart';
import 'package:digi_chum/widgets/featureProduct.dart';
import 'package:digi_chum/widgets/listItem.dart';
import 'package:digi_chum/widgets/newItem.dart';
import 'package:flutter/cupertino.dart';
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
class NewItem {
  bool isExpanded;
  final String title;
  final String header;
  final Widget body;
  NewItem({
    this.title,
    this.isExpanded,
   this.header,
   this.body,
  });
}
class _MyHomePageState extends State<MyHomePage> {
  bool expansion = true;
  List<NewItem> items = <NewItem>[
    NewItem(isExpanded: true,title: "Daily Wear", header: "Header",body: NewItemBody()),
    NewItem(isExpanded: false,title: "Ethnic Wear", header: "Header",body: NewItemBody()),
    NewItem(isExpanded: false,title: "Winter Wear", header: "Header",body: NewItemBody()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              CircleIcon(
                icon: Icons.add_shopping_cart_rounded,
              ),
              CircleIcon(
                icon: Icons.category,
              ),
              CircleIcon(
                icon: Icons.calendar_today_outlined,
              ),
              CircleIcon(
                icon: Icons.mobile_screen_share_outlined,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: FadeAnimation(delay: 1,child: featuredProduct(),),
                ),
                SizedBox(
                  height: 5,
                ),
                FadeAnimation(delay: 2,child: Container(
                  height: 38,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      ListItem(
                        item: "WOMEN",
                        selected: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ListItem(
                        item: "MEN",
                        selected: true,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ListItem(
                        item: "KIDS",
                        selected: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ListItem(
                        item: "HOUSEHOLD",
                        selected: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ListItem(
                        item: "Kitchen",
                        selected: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),),
                SizedBox(
                  height: 5,
                ),
                FadeAnimation(delay: 3,child: Container(
                  width: 500,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                      children: [
                        Container(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 243, 243, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintText: "Search you're looking for",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.lightBlueAccent,
                                  ],
                                  begin: AlignmentDirectional.bottomStart,
                                  end: AlignmentDirectional.topEnd
                              ),
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) )
                          ),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2,vertical: 18),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                items[index].isExpanded = !items[index].isExpanded;
                              });
                            },
                            children: items.map((NewItem item) {
                              return ExpansionPanel(
                                canTapOnHeader: true,

                                headerBuilder: (BuildContext context, bool isExpanded) {
                                  return  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(item.title, style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 16),),
                                  );
                                },
                                isExpanded: item.isExpanded,
                                body: item.body,
                              );
                            }).toList(),
                          ),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                          ),
                        ),

                      ]
                  ),

                ),),
                FadeAnimation(delay: 4,child: Container(
                  margin: EdgeInsets.only(bottom: 60.0,left:20,right:20),
                  padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.lightBlueAccent,
                        ],
                        begin: AlignmentDirectional.bottomStart,
                        end: AlignmentDirectional.topEnd
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2 (Items) | ₹1000 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("ADD TO CART",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                ),),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
