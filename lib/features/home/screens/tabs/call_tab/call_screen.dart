import 'package:flutter/material.dart';


class MyHomePagee extends StatefulWidget {
  const MyHomePagee({Key? key}) : super(key: key);

  @override
  State<MyHomePagee> createState() => _MyHomePageeState();
}

class _MyHomePageeState extends State<MyHomePagee> {
  bool _displayNewTextField = false;
  TextEditingController newTextFieldController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text("Reset Password"),
              ),
              const Center(
                child: Expanded(
                  child: Text(
                    "Enter your username below to recieve password reset instruction",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ),
              TextFormField(
                controller: userNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "User Name",
                ),
              ),
              Visibility(
                visible: _displayNewTextField,
                child: TextFormField(
                  controller: newTextFieldController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "User Name",
                  ),
                ),
              ),
              Container(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _displayNewTextField = true;
                    });
                  },
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
