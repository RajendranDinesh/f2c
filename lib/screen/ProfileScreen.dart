import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var gender = [
    'Male',
    'Female',
    'Others',
    'Prefer Not To Disclose',
  ];
  var genderDrop = "Male";

  @override
  Widget build(BuildContext context) {

    final TextEditingController birthday = TextEditingController();
    birthday.text = 'dd/mm/yy';
    return GestureDetector(
      onTap: () => {FocusScope.of(context).requestFocus(FocusNode())},
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Scaffold(
          appBar: (AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // IconButton(
              //   icon: const Icon(
              //     Icons.arrow_back_ios_new,
              //     color: Colors.orange,
              //   ),
              //   onPressed: () {},
              // ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Your Profile",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              )
            ]),
          )),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.3,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/carrot_logo.png',
                          height: 135,
                          width: 135,
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("Change Photo"))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 15),
                                  ),
                                ],
                              ),
                              const TextField(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Phone Number",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 15),
                                  ),
                                ],
                              ),
                              const TextField(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "eMail",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 15),
                                  ),
                                ],
                              ),
                              const TextField(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Birthday",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 15),
                                  ),
                                ],
                              ),
                              TextFormField(
                                controller: birthday,
                                onTap: () => {
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime.now())
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Text(
                                      "Gender",
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 15),
                                    ),
                                    const SizedBox(width: 10,),
                                    DropdownButton(
                                        value: genderDrop,

                                        items: gender.map((String gender) {
                                          return DropdownMenuItem(
                                              value: gender, child: Text(gender));
                                        }).toList(),

                                        onChanged: (String? nValue) {
                                          setState(() {
                                            genderDrop = nValue!;
                                          });
                                        })
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
