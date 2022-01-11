import 'package:flutter/material.dart';
class NewItemBody extends StatefulWidget {
  const NewItemBody({Key? key}) : super(key: key);

  @override
  _NewItemBodyState createState() => _NewItemBodyState();
}

class _NewItemBodyState extends State<NewItemBody> {
  int quantity=0;
  int quantity1=0;
  int quantity2=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage('assets/images/shirt.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shirt",style: TextStyle(fontSize: 17),),
                    Text("₹0000 / piece"),
                  ],
                ),
                quantity == 0
                    ? GestureDetector(
                  onTap: () {
                    setState(() {
                      quantity = quantity + 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                    child: Text("Add",style: TextStyle(color: Colors.white),),
                  ),
                )
                    : Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity > 1) {
                              print("Here >1");
                              quantity = quantity - 1;
                              //clear(widget.id);
                            }else{
                              if(quantity==1){
                                quantity=0;
                              }
                            }
                            print("Outside");

                          });
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity = quantity + 1;
                          });
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage('assets/images/shirt.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shirt",style: TextStyle(fontSize: 17),),
                    Text("₹0000 / piece"),
                  ],
                ),
                quantity1 == 0
                    ? GestureDetector(
                  onTap: () {
                    setState(() {
                      quantity1 = quantity1 + 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                    child: Text("Add",style: TextStyle(color: Colors.white),),
                  ),
                )
                    : Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity1 > 1) {
                              print("Here >1");
                              quantity1 = quantity1 - 1;
                              //clear(widget.id);
                            }else{
                              if(quantity1==1){
                                quantity1=0;
                               }
                            }
                            print("Outside");

                          });
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        quantity1.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity1 = quantity1 + 1;
                          });
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage('assets/images/shirt.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shirt",style: TextStyle(fontSize: 17),),
                    Text("₹0000 / piece"),
                  ],
                ),
                quantity2 == 0
                    ? GestureDetector(
                  onTap: () {
                    setState(() {
                      quantity2 = quantity2 + 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                    child: Text("Add",style: TextStyle(color: Colors.white),),
                  ),
                )
                    : Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity2 > 1) {
                              print("Here >1");
                              quantity2 = quantity2 - 1;
                              //clear(widget.id);
                            }else{
                              if(quantity2==1){
                                quantity2=0;
                              }
                            }
                            print("Outside");

                          });
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        quantity2.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity2 = quantity2 + 1;
                          });
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]
      ),
    );
  }
}
