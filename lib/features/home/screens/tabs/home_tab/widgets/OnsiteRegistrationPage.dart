import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:group_button/group_button.dart';

class OnsiteRegistration extends StatefulWidget {
  const OnsiteRegistration({Key? key}) : super(key: key);

  @override
  State<OnsiteRegistration> createState() => _OnsiteRegistrationState();
}
List<bool> isCardEnabled = [];
final radioButtonController = GroupButtonController();

class _OnsiteRegistrationState extends State<OnsiteRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Onsite Registration",style: TextStyle(color: Colors.indigo),),
        centerTitle: true,
        // backgroundColor: ,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF1EDF2),
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 20,right: 28.0,),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.58,
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

                      Row(
                        children:  [
                          GroupButton(
                            controller: radioButtonController,
                            isRadio: true,
                              buttons: const ["1 BHK", "2 BHK", "3 BHK"],

                            onSelected: (value, index, isSelected) =>
                                print("index is $index and value is $value , is selected $isSelected"),
                            options:  const GroupButtonOptions(
                              unselectedColor: Color(0xFFF1EDF2),
                              selectedColor: Color(0xFFF1EDF2),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              spacing: 30,
                              buttonWidth: 90,
                              unselectedTextStyle: TextStyle(
                                color: Colors.black54
                              ),
                              selectedTextStyle: TextStyle(
                                color: Colors.black,
                              ),

                              selectedBorderColor: Colors.purple,
                              unselectedBorderColor: Colors.grey,
                              elevation: 0

                            ),

                          )
                        ],
                      )
                    ],
                  ),
                ),


                // Padding(
                //   padding: const EdgeInsets.only(top: 18.0),
                //   child: ExpansionPanelList(
                //     children: [
                //       ExpansionPanel(
                //
                //         canTapOnHeader: true,
                //
                //         headerBuilder: ((context, isExpanded) => const Text("Additional Information")),
                //           body: Container(
                //             height: MediaQuery.of(context).size.height * 0.2,
                //             width: MediaQuery.of(context).size.width ,
                //             color: Colors.black,
                //             child: Column(
                //               children: [
                //                 Row(
                //                   children: const [
                //
                //                   ] ,
                //                 )
                //               ],
                //             ),
                //           ),
                //       )
                //
                //     ]
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
