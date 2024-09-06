import 'package:flutter/material.dart';
import 'package:kisanapp/pages/details.dart';
import 'package:kisanapp/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool vegetables = false, fruits = false, grain = false, milk2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello Sandeep,", style: AppWidget.boldTextFeildStyle()),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text("Farm Fresh", style: AppWidget.HeadlineFeildStyle()),
              Text("Direct from Farmer to your table",
                  style: AppWidget.LightTextFeildStyle()),
              SizedBox(
                height: 20,
              ),
              showItem(),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: 30,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/tomato (2).jpg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Tomato",
                                  style: AppWidget.boldTextFeildStyle(),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                                SizedBox(
                                  height: 1.0,
                                ),
                                Text(
                                  "₹115 for 5 kg",
                                  style: AppWidget.boldTextFeildStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/kobi.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Cauliflower",
                                style: AppWidget.boldTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Green and Healthy",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 1.0,
                              ),
                              Text(
                                "₹30 per kg",
                                style: AppWidget.boldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/kobi2.jpg",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          // Wrap the Column inside Flexible
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cabbage",
                                style: AppWidget.boldTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Packed with Goodness",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              Text(
                                "₹50 for 2 kg",
                                style: AppWidget.boldTextFeildStyle(),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            vegetables = true;
            fruits = false;
            grain = false;
            milk2 = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: vegetables ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/vegetables.jpg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                color: vegetables ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            vegetables = false;
            fruits = true;
            grain = false;
            milk2 = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: fruits ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/fruits.jpg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                color: fruits ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            vegetables = false;
            fruits = false;
            grain = true;
            milk2 = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: grain ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/grain.jpg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                color: grain ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            vegetables = false;
            fruits = false;
            grain = false;
            milk2 = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: milk2 ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/milk2.jpg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                color: milk2 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
