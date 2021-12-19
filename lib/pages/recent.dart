import 'package:contact_app/screens/contactDetails.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/models/details.dart';
import 'package:contact_app/data/data.dart';

class Recent extends StatefulWidget {
  Recent({Key? key}) : super(key: key);

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  List<Details> contactDetails = Data.contactDetail();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2f38),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2b2f38),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1584119164246-461d43e9bab3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
            Expanded(
              child: Center(
                child: Text("Phone"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Color(0xff067ae6),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Recents",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Favorites",
                      style: TextStyle(
                        color: Color(0xff686b70),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Missed",
                      style: TextStyle(
                        color: Color(0xff686b70),
                        fontSize: 15,
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
          Expanded(
            child: Container(
              child: ListView.separated(
                  itemBuilder: (BuildContext ctx, int index) => ListTile(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return ContactDetails(index);
                          //     },
                          //   ),
                          // );
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage("${contactDetails[index].image}"),
                        ),
                        title: Text(
                          "${contactDetails[index].firstName}" +
                              " " +
                              "${contactDetails[index].lastName}",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                        subtitle: Text(
                          "${contactDetails[index].label}",
                          style: TextStyle(
                            color: Color(0xff686b70),
                          ),
                        ),
                        trailing: Text(
                          "${contactDetails[index].time}",
                          style: TextStyle(
                            color: Color(0xff686b70),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                        child: Divider(
                          thickness: 1,
                          height: 8,
                          color: Color(0xff686b70),
                        ),
                      ),
                  itemCount: contactDetails.length),
            ),
          )
        ],
      ),
    
    );
  }
}


