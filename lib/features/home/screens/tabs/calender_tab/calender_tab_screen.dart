import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}
List<bool> isCardEnabled = [];

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, top: 20,right: 28.0,),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Basic Information"),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 16.0,bottom: 8.0),
              child: Text("Full Name"),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: "Enter Full Name",
                contentPadding:  EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 14.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFF9F6F9),
                  ),
                ),
                filled: true,
                fillColor: Color(0xFFF9F6F9),
              ),

            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0,bottom: 8.0),
              child: Text("Mobile Number"),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: "Enter Mobile Number",
                contentPadding:  EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 14.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFF9F6F9),
                  ),
                ),
                filled: true,
                fillColor: Color(0xFFF9F6F9),
              ),

            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0,bottom: 8.0),
              child: Text("Email ID"),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: "Enter Email ID",
                contentPadding:  EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 14.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    // color: Color(0xFFF9F6F9),
                  ),
                ),
                filled: true,
                fillColor: Color(0xFFF9F6F9),
              ),

            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0,bottom: 8.0),
              child: Text("project"),
            ),

            DropdownButtonFormField<String>(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Select  Event Type from Dropdown';
                }
                return null;
              },
              items: [
                "Bhoomi Acres",
                "Second project",
                "Third Project"
              ]
                  .map((label) => DropdownMenuItem(
                value: label,
                child: Text(label.toString()),
              ))
                  .toList(),
              decoration: const InputDecoration(
                hintText: "Enter Email ID",
                contentPadding:  EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 14.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    // color: Color(0xFFF9F6F9),
                  ),
                ),
                filled: true,
                fillColor: Color(0xFFF9F6F9),
              ),

              icon: const Icon(Icons.arrow_drop_down_sharp),
              hint: const Text(
                "Select project",
              ),
              onChanged: (val) {
                setState(() {

                });
              },
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16.0,bottom: 8.0),
              child: Text("Select Type"),
            ),

          ],
        ),
      ),
    );
  }
}
