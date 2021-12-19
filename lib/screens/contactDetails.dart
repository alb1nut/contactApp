import 'package:contact_app/data/data.dart';
import 'package:contact_app/models/details.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/screens/homeView.dart';

class ContactDetails extends StatelessWidget {
  ContactDetails({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
            elevation: 0, 
          backgroundColor: Color(0xff2b2f38), 
          title: Expanded(
              child: Center(
                child: Text("My Contact"),
              ),
            ),
          actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: CircleAvatar(
            backgroundColor: Color(0xff067ae6),
            radius: 18,
            child: TextButton(
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Color(0xffffffff),
              ),
            ),
          ),
        )
      ]),
      body: Container(
        color: Color(0xff2b2f38),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(150, 10, 150, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                width: 50,
                child: Card(
                  child: Image.network(
                    "https://images.unsplash.com/photo-1584119164246-461d43e9bab3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Albert Dovlo",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Center(
              child: Text(
                "Cellular",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff686b70),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 100,
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff81c784),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 10,
                        child: Icon(
                          Icons.message,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff1e88e5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 10,
                        child: Icon(
                          Icons.phone,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffc62828),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 10,
                        child: Icon(
                          Icons.video_camera_back,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff686b70),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 10,
                        child: Icon(
                          Icons.mail_outline_outlined,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xff20232c),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cellular",
                                style: TextStyle(
                                  color: Color(0xff686b70),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "0203754879",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ]),
                        Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: Color(0xff686b70),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.phone,
                              color: Color(0xff686b70),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Divider(
                thickness: 1,
                height: 8,
                color: Color(0xff686b70),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  color: Color(0xff686b70),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "albertnutifafa@gmail.com",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ]),
                        Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: Color(0xff686b70),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.phone,
                              color: Color(0xff686b70),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Divider(
                thickness: 1,
                height: 8,
                color: Color(0xff686b70),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(
                                  color: Color(0xff686b70),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Pokuase",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Divider(
                thickness: 1,
                height: 8,
                color: Color(0xff686b70),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(
                                  color: Color(0xff686b70),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "25.8 km",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Divider(
                thickness: 1,
                height: 8,
                color: Color(0xff686b70),
              ),
            ),
            // Stack(
            //   children: [
            //     Positioned(
            //       height:20,
            //       width:20,
            //       bottom: 0,
            //       right: 0,
            //       child: (Image(
            //         image: NetworkImage(
            //             "https://images.unsplash.com/photo-1599202860130-f600f4948364?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80"),
            //       )),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
