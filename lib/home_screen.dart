// ignore_for_file: prefer_const_constructors, unused_field

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownvalue = 'Male';
  String dropvalues = 'Hosteller';
  var itemss = [
    'Hosteller',
    'dayscholar',
  ];
  // List of items in our dropdown menu
  var items = [
    'Male',
    'Female',
    'Other',
  ];
  String im = "";

  ImagePicker image = ImagePicker();

  File? file;

  String url = "";

  getgall() async {
    var img = await image.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
  }

  singam() {
    FirebaseFirestore.instance.collection("user").doc(_taskController.text).set(
      {
        "Roll No": _taskController.text,
        "Hosteller": dropvalues,
        "Gender": dropdownvalue,
        "Name": _taskControllername.text,
        "Date Of Birth": _taskControllerdob.text,
        "Community": _taskControllercommunity.text,
        "nationality": _taskControllernat.text,
        "Blood Group": _taskControllerblood.text,
        "Father's Name": _taskControllerfather.text,
        "occupation": _taskControllerocc.text,
        "Mother's Name": _taskControllermother.text,
        "Mobile Number": _taskControllermobile.text,
        "Residential Address":
            "${_taskControllerresidential.text},${_taskControllerresidential1.text},${_taskControllerresidential2.text}",
        "Permanent Address":
            "${_taskControllerpermanent.text},${_taskControllerpermanent1.text},${_taskControllerpermanent2.text}",
        "aadhar Number": _taskControlleraadhar.text,
        "Year of passing": _taskControllersyearpassing.text,
        "HSCMark": _taskControllerhscper.text,
        "HSCSchool": _taskControllerhscschool.text,
        "HSC": _taskControllerboard.text,
        "SSLCMark": _taskControllersslcper.text,
        "SSLCSchool": _taskControllersslcschool.text,
        "SSLC": _taskControllersslcboard.text,
        'SEMESTER 1 EXAM 1 Mark1': " ",
        'SEMESTER 1 EXAM 1 Mark2': " ",
        'SEMESTER 1 EXAM 1 Mark3': " ",
        "SEMESTER 1 EXAM 1 Mark4": " ",
        "SEMESTER 1 EXAM 1 Mark5": " ",
        'SEMESTER 1 EXAM 1 Mark6': " ",
        'SEMESTER 1 EXAM 1 Mark7': " ",
        'SEMESTER 1 EXAM 2 Mark1': " ",
        'SEMESTER 1 EXAM 2 Mark2': " ",
        'SEMESTER 1 EXAM 2 Mark3': " ",
        "SEMESTER 1 EXAM 2 Mark4": " ",
        "SEMESTER 1 EXAM 2 Mark5": " ",
        'SEMESTER 1 EXAM 2 Mark6': " ",
        'SEMESTER 1 EXAM 2 Mark7': " ",
        'SEMESTER 1 EXAM 3 Mark1': " ",
        'SEMESTER 1 EXAM 3 Mark2': " ",
        'SEMESTER 1 EXAM 3 Mark3': " ",
        "SEMESTER 1 EXAM 3 Mark4": " ",
        "SEMESTER 1 EXAM 3 Mark5": " ",
        'SEMESTER 1 EXAM 3 Mark6': " ",
        'SEMESTER 1 EXAM 3 Mark7': " ",
        'SEMESTER 1 EXAM 4 Mark1': " ",
        'SEMESTER 1 EXAM 4 Mark2': " ",
        'SEMESTER 1 EXAM 4 Mark3': " ",
        "SEMESTER 1 EXAM 4 Mark4": " ",
        "SEMESTER 1 EXAM 4 Mark5": " ",
        'SEMESTER 1 EXAM 4 Mark6': " ",
        'SEMESTER 1 EXAM 4 Mark7': " ",
        'SEMESTER 1 EXAM 5 Mark1': " ",
        'SEMESTER 1 EXAM 5 Mark2': " ",
        'SEMESTER 1 EXAM 5 Mark3': " ",
        "SEMESTER 1 EXAM 5 Mark4": " ",
        "SEMESTER 1 EXAM 5 Mark5": " ",
        'SEMESTER 1 EXAM 5 Mark6': " ",
        'SEMESTER 1 EXAM 5 Mark7': " ",
        ///////////////////////////////////
        'SEMESTER 2 EXAM 1 Mark1': " ",
        'SEMESTER 2 EXAM 1 Mark2': " ",
        'SEMESTER 2 EXAM 1 Mark3': " ",
        "SEMESTER 2 EXAM 1 Mark4": " ",
        "SEMESTER 2 EXAM 1 Mark5": " ",
        'SEMESTER 2 EXAM 1 Mark6': " ",
        'SEMESTER 2 EXAM 1 Mark7': " ",
        'SEMESTER 2 EXAM 2 Mark1': " ",
        'SEMESTER 2 EXAM 2 Mark2': " ",
        'SEMESTER 2 EXAM 2 Mark3': " ",
        "SEMESTER 2 EXAM 2 Mark4": " ",
        "SEMESTER 2 EXAM 2 Mark5": " ",
        'SEMESTER 2 EXAM 2 Mark6': " ",
        'SEMESTER 2 EXAM 2 Mark7': " ",
        'SEMESTER 2 EXAM 3 Mark1': " ",
        'SEMESTER 2 EXAM 3 Mark2': " ",
        'SEMESTER 2 EXAM 3 Mark3': " ",
        "SEMESTER 2 EXAM 3 Mark4": " ",
        "SEMESTER 2 EXAM 3 Mark5": " ",
        'SEMESTER 2 EXAM 3 Mark6': " ",
        'SEMESTER 2 EXAM 3 Mark7': " ",
        'SEMESTER 2 EXAM 4 Mark1': " ",
        'SEMESTER 2 EXAM 4 Mark2': " ",
        'SEMESTER 2 EXAM 4 Mark3': " ",
        "SEMESTER 2 EXAM 4 Mark4": " ",
        "SEMESTER 2 EXAM 4 Mark5": " ",
        'SEMESTER 2 EXAM 4 Mark6': " ",
        'SEMESTER 2 EXAM 4 Mark7': " ",
        'SEMESTER 2 EXAM 5 Mark1': " ",
        'SEMESTER 2 EXAM 5 Mark2': " ",
        'SEMESTER 2 EXAM 5 Mark3': " ",
        "SEMESTER 2 EXAM 5 Mark4": " ",
        "SEMESTER 2 EXAM 5 Mark5": " ",
        'SEMESTER 2 EXAM 5 Mark6': " ",
        'SEMESTER 2 EXAM 5 Mark7': " ",
        ////////////////////////////////////////////////////
        'SEMESTER 3 EXAM 1 Mark1': " ",
        'SEMESTER 3 EXAM 1 Mark2': " ",
        'SEMESTER 3 EXAM 1 Mark3': " ",
        "SEMESTER 3 EXAM 1 Mark4": " ",
        "SEMESTER 3 EXAM 1 Mark5": " ",
        'SEMESTER 3 EXAM 1 Mark6': " ",
        'SEMESTER 3 EXAM 1 Mark7': " ",
        'SEMESTER 3 EXAM 2 Mark1': " ",
        'SEMESTER 3 EXAM 2 Mark2': " ",
        'SEMESTER 3 EXAM 2 Mark3': " ",
        "SEMESTER 3 EXAM 2 Mark4": " ",
        "SEMESTER 3 EXAM 2 Mark5": " ",
        'SEMESTER 3 EXAM 2 Mark6': " ",
        'SEMESTER 3 EXAM 2 Mark7': " ",
        'SEMESTER 3 EXAM 3 Mark1': " ",
        'SEMESTER 3 EXAM 3 Mark2': " ",
        'SEMESTER 3 EXAM 3 Mark3': " ",
        "SEMESTER 3 EXAM 3 Mark4": " ",
        "SEMESTER 3 EXAM 3 Mark5": " ",
        'SEMESTER 3 EXAM 3 Mark6': " ",
        'SEMESTER 3 EXAM 3 Mark7': " ",
        'SEMESTER 3 EXAM 4 Mark1': " ",
        'SEMESTER 3 EXAM 4 Mark2': " ",
        'SEMESTER 3 EXAM 4 Mark3': " ",
        "SEMESTER 3 EXAM 4 Mark4": " ",
        "SEMESTER 3 EXAM 4 Mark5": " ",
        'SEMESTER 3 EXAM 4 Mark6': " ",
        'SEMESTER 3 EXAM 4 Mark7': " ",
        'SEMESTER 3 EXAM 5 Mark1': " ",
        'SEMESTER 3 EXAM 5 Mark2': " ",
        'SEMESTER 3 EXAM 5 Mark3': " ",
        "SEMESTER 3 EXAM 5 Mark4": " ",
        "SEMESTER 3 EXAM 5 Mark5": " ",
        'SEMESTER 3 EXAM 5 Mark6': " ",
        'SEMESTER 3 EXAM 5 Mark7': " ",
        ////////////////////////////////////
        'SEMESTER 4 EXAM 1 Mark1': " ",
        'SEMESTER 4 EXAM 1 Mark2': " ",
        'SEMESTER 4 EXAM 1 Mark3': " ",
        "SEMESTER 4 EXAM 1 Mark4": " ",
        "SEMESTER 4 EXAM 1 Mark5": " ",
        'SEMESTER 4 EXAM 1 Mark6': " ",
        'SEMESTER 4 EXAM 1 Mark7': " ",
        'SEMESTER 4 EXAM 2 Mark1': " ",
        'SEMESTER 4 EXAM 2 Mark2': " ",
        'SEMESTER 4 EXAM 2 Mark3': " ",
        "SEMESTER 4 EXAM 2 Mark4": " ",
        "SEMESTER 4 EXAM 2 Mark5": " ",
        'SEMESTER 4 EXAM 2 Mark6': " ",
        'SEMESTER 4 EXAM 2 Mark7': " ",
        'SEMESTER 4 EXAM 3 Mark1': " ",
        'SEMESTER 4 EXAM 3 Mark2': " ",
        'SEMESTER 4 EXAM 3 Mark3': " ",
        "SEMESTER 4 EXAM 3 Mark4": " ",
        "SEMESTER 4 EXAM 3 Mark5": " ",
        'SEMESTER 4 EXAM 3 Mark6': " ",
        'SEMESTER 4 EXAM 3 Mark7': " ",
        'SEMESTER 4 EXAM 4 Mark1': " ",
        'SEMESTER 4 EXAM 4 Mark2': " ",
        'SEMESTER 4 EXAM 4 Mark3': " ",
        "SEMESTER 4 EXAM 4 Mark4": " ",
        "SEMESTER 4 EXAM 4 Mark5": " ",
        'SEMESTER 4 EXAM 4 Mark6': " ",
        'SEMESTER 4 EXAM 4 Mark7': " ",
        'SEMESTER 4 EXAM 5 Mark1': " ",
        'SEMESTER 4 EXAM 5 Mark2': " ",
        'SEMESTER 4 EXAM 5 Mark3': " ",
        "SEMESTER 4 EXAM 5 Mark4": " ",
        "SEMESTER 4 EXAM 5 Mark5": " ",
        'SEMESTER 4 EXAM 5 Mark6': " ",
        'SEMESTER 4 EXAM 5 Mark7': " ",
        /////////////////////////////////////
        'SEMESTER 5 EXAM 1 Mark1': " ",
        'SEMESTER 5 EXAM 1 Mark2': " ",
        'SEMESTER 5 EXAM 1 Mark3': " ",
        "SEMESTER 5 EXAM 1 Mark4": " ",
        "SEMESTER 5 EXAM 1 Mark5": " ",
        'SEMESTER 5 EXAM 1 Mark6': " ",
        'SEMESTER 5 EXAM 1 Mark7': " ",
        'SEMESTER 5 EXAM 2 Mark1': " ",
        'SEMESTER 5 EXAM 2 Mark2': " ",
        'SEMESTER 5 EXAM 2 Mark3': " ",
        "SEMESTER 5 EXAM 2 Mark4": " ",
        "SEMESTER 5 EXAM 2 Mark5": " ",
        'SEMESTER 5 EXAM 2 Mark6': " ",
        'SEMESTER 5 EXAM 2 Mark7': " ",
        'SEMESTER 5 EXAM 3 Mark1': " ",
        'SEMESTER 5 EXAM 3 Mark2': " ",
        'SEMESTER 5 EXAM 3 Mark3': " ",
        "SEMESTER 5 EXAM 3 Mark4": " ",
        "SEMESTER 5 EXAM 3 Mark5": " ",
        'SEMESTER 5 EXAM 3 Mark6': " ",
        'SEMESTER 5 EXAM 3 Mark7': " ",
        'SEMESTER 5 EXAM 4 Mark1': " ",
        'SEMESTER 5 EXAM 4 Mark2': " ",
        'SEMESTER 5 EXAM 4 Mark3': " ",
        "SEMESTER 5 EXAM 4 Mark4": " ",
        "SEMESTER 5 EXAM 4 Mark5": " ",
        'SEMESTER 5 EXAM 4 Mark6': " ",
        'SEMESTER 5 EXAM 4 Mark7': " ",
        'SEMESTER 5 EXAM 5 Mark1': " ",
        'SEMESTER 5 EXAM 5 Mark2': " ",
        'SEMESTER 5 EXAM 5 Mark3': " ",
        "SEMESTER 5 EXAM 5 Mark4": " ",
        "SEMESTER 5 EXAM 5 Mark5": " ",
        'SEMESTER 5 EXAM 5 Mark6': " ",
        'SEMESTER 5 EXAM 5 Mark7': " ",
        /////////////////////////////////
        'SEMESTER 6 EXAM 1 Mark1': " ",
        'SEMESTER 6 EXAM 1 Mark2': " ",
        'SEMESTER 6 EXAM 1 Mark3': " ",
        "SEMESTER 6 EXAM 1 Mark4": " ",
        "SEMESTER 6 EXAM 1 Mark5": " ",
        'SEMESTER 6 EXAM 1 Mark6': " ",
        'SEMESTER 6 EXAM 1 Mark7': " ",
        'SEMESTER 6 EXAM 2 Mark1': " ",
        'SEMESTER 6 EXAM 2 Mark2': " ",
        'SEMESTER 6 EXAM 2 Mark3': " ",
        "SEMESTER 6 EXAM 2 Mark4": " ",
        "SEMESTER 6 EXAM 2 Mark5": " ",
        'SEMESTER 6 EXAM 2 Mark6': " ",
        'SEMESTER 6 EXAM 2 Mark7': " ",
        'SEMESTER 6 EXAM 3 Mark1': " ",
        'SEMESTER 6 EXAM 3 Mark2': " ",
        'SEMESTER 6 EXAM 3 Mark3': " ",
        "SEMESTER 6 EXAM 3 Mark4": " ",
        "SEMESTER 6 EXAM 3 Mark5": " ",
        'SEMESTER 6 EXAM 3 Mark6': " ",
        'SEMESTER 6 EXAM 3 Mark7': " ",
        'SEMESTER 6 EXAM 4 Mark1': " ",
        'SEMESTER 6 EXAM 4 Mark2': " ",
        'SEMESTER 6 EXAM 4 Mark3': " ",
        "SEMESTER 6 EXAM 4 Mark4": " ",
        "SEMESTER 6 EXAM 4 Mark5": " ",
        'SEMESTER 6 EXAM 4 Mark6': " ",
        'SEMESTER 6 EXAM 4 Mark7': " ",
        'SEMESTER 6 EXAM 5 Mark1': " ",
        'SEMESTER 6 EXAM 5 Mark2': " ",
        'SEMESTER 6 EXAM 5 Mark3': " ",
        "SEMESTER 6 EXAM 5 Mark4": " ",
        "SEMESTER 6 EXAM 5 Mark5": " ",
        "SEMESTER 6 EXAM 5 Mark6": " ",
        "SEMESTER 6 EXAM 5 Mark7": " ",
        "Url": url,
      },
      clearTextInput(),
    );
    // showAlertDialogs(context);
    EasyLoading.showSuccess('Success!');
  }

  uploadFile() async {
    EasyLoading.show(status: 'loading...');

    Reference imageFile =
        FirebaseStorage.instance.ref().child("CSE").child(_taskController.text);
    await imageFile.putFile(file!).whenComplete(() async {
      url = await imageFile.getDownloadURL();

      print(url);
      //upload code
      singam();
      setState(() {
        file = null;
      });
    });
  }

  final _formKey = GlobalKey<FormState>();

  // ignore: prefer_final_fields
  final _taskController = TextEditingController();
  final _taskControllername = TextEditingController();
  final _taskControllerdob = TextEditingController();
  final _taskControllernat = TextEditingController();
  final _taskControllerblood = TextEditingController();
  final _taskControllercommunity = TextEditingController();
  final _taskControllerfather = TextEditingController();
  final _taskControllerocc = TextEditingController();
  final _taskControllermother = TextEditingController();
  final _taskControllermobile = TextEditingController();
  final _taskControllerresidential = TextEditingController();
  final _taskControllerresidential1 = TextEditingController();
  final _taskControllerresidential2 = TextEditingController();
  final _taskControllerpermanent = TextEditingController();
  final _taskControllerpermanent1 = TextEditingController();
  final _taskControllerpermanent2 = TextEditingController();
  final _taskControlleraadhar = TextEditingController();
  final _taskControllerhscper = TextEditingController();
  final _taskControllerhscschool = TextEditingController();
  final _taskControllerboard = TextEditingController();
  final _taskControllersslcper = TextEditingController();
  final _taskControllersslcschool = TextEditingController();
  final _taskControllersslcboard = TextEditingController();
  final _taskControllersyearpassing = TextEditingController();

  get okButton => null;
  _fetchUserData() async {
    try {
      await FirebaseFirestore.instance
          .collection("user")
          .doc(_taskController.text)
          .get()
          .then((ds) {
        if (ds.exists) {
          showAlertDialog(context);
          _taskController.clear();
        }
        return null;
      });
    } catch (e) {
      print(e);
    }
  }

  clearTextInput() {
    _taskController.clear();
    _taskControllername.clear();
    _taskControllerdob.clear();
    _taskControllernat.clear();
    _taskControllerblood.clear();
    _taskControllercommunity.clear();
    _taskControllerfather.clear();
    _taskControllerocc.clear();
    _taskControllermother.clear();
    _taskControllermobile.clear();
    _taskControllerresidential.clear();
    _taskControllerresidential1.clear();
    _taskControllerresidential2.clear();
    _taskControllerpermanent.clear();
    _taskControllerpermanent1.clear();
    _taskControllerpermanent2.clear();
    _taskControlleraadhar.clear();
    _taskControllerhscper.clear();
    _taskControllersslcper.clear(); //
    _taskControllerhscschool.clear(); //
    _taskControllersslcboard.clear();
    _taskControllersslcschool.clear();
    _taskControllersyearpassing.clear();
    _taskControllerboard.clear();
    // _taskControllerhosteller.clear(); //
    dropdownvalue = "Male";
    dropvalues = "Hosteller"; //
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CA Department"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: _formKey,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 10,
                    cursorColor: Colors.red,
                    controller: _taskController,
                    textCapitalization: TextCapitalization.characters,
                    // keyboardType: TextInputType.number,
                    // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.album_rounded,
                        color: Colors.blue,
                      ),
                      hintText: 'Enter Roll No',
                    ),
                    onChanged: (value) {
                      _fetchUserData();
                    },
                    validator: (value) {
                      if (value != null && value.length < 12) {
                        return "Enter Roll No 12 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    cursorColor: Colors.red,
                    controller: _taskControllername,
                    decoration: InputDecoration(
                        suffixIcon:
                            Icon(Icons.person_rounded, color: Colors.pink),
                        hintText: 'Enter Name'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerdob,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.date_range,
                          color: Color.fromARGB(255, 212, 76, 27),
                        ),

                        // icon: Icon(Icons.calendar_today_rounded),
                        hintText: "Date of birth "),
                    onTap: () async {
                      DateTime? pickedate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2101));
                      setState(() {
                        var day = DateTime.now();
                        if (pickedate == null) {
                          setState(() {
                            pickedate = day;
                          });
                        }
                        final DateFormat formatter = DateFormat('dd-MM-yyyy');
                        final String formatted = formatter.format(pickedate!);
                        print(formatted);
                        _taskControllerdob.text = formatted;
                      });
                    },
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Select Date ";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllercommunity,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.noise_aware,
                          color: Colors.purple,
                        ),
                        hintText: 'Enter Community'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter  Community";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton(
                      // Initial Value
                      value: dropvalues,
                      isExpanded: true,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      items: itemss.map((String ite) {
                        return DropdownMenuItem(
                          value: ite,
                          child: Text(ite),
                        );
                      }).toList(),
                      onChanged: (String? newValues) {
                        setState(() {
                          dropvalues = newValues!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllernat,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.inbox,
                          color: Color.fromARGB(255, 255, 89, 0),
                        ),
                        hintText: 'Enter Nationality'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Nationality";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllersyearpassing,
                    maxLength: 9,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.date_range,
                          color: Color.fromARGB(255, 8, 211, 1),
                        ),

                        // icon: Icon(Icons.calendar_today_rounded),
                        hintText: "Year of Passing "),
                    // onTap: () async {
                    //   DateTime? pickedate = await showDatePicker(
                    //       context: context,
                    //       initialDate: DateTime.now(),
                    //       firstDate: DateTime(2000),
                    //       lastDate: DateTime(2101));
                    //   setState(() {
                    //     _taskControllersyearpassing.text =
                    //         pickedate.toString().substring(0, 4);
                    //   });
                    // },
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Date ";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerblood,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.bloodtype,
                          color: Color.fromARGB(255, 222, 15, 0),
                        ),
                        hintText: 'Enter Blood Group'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Blood Group";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerfather,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.person_pin,
                          color: Colors.deepOrange,
                        ),
                        hintText: 'Enter Father Name'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Father Name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerocc,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.work,
                          color: Color.fromARGB(255, 254, 229, 3),
                        ),
                        hintText: 'Enter  Occupation'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Occupation";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllermother,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.person_pin,
                          color: Colors.deepOrange,
                        ),
                        iconColor: Colors.red,
                        hintText: 'Enter  Mother Name'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Mother Name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllermobile,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.green,
                        ),
                        iconColor: Colors.red,
                        hintText: 'Enter  Mobile Number'),
                    validator: (value) {
                      if (value != null && value.length < 10) {
                        return "Enter Mobile Number";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerresidential,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.location_city,
                          color: const Color.fromARGB(255, 15, 3, 124),
                        ),
                        iconColor: Colors.red,
                        hintText: 'Enter  Residential Address'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter Residential Address";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 0.2,
                  ),
                  TextFormField(
                    controller: _taskControllerresidential1,
                    decoration: InputDecoration(),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 0.2,
                  ),
                  TextFormField(
                    controller: _taskControllerresidential2,
                    decoration: InputDecoration(),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerpermanent,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.location_city_outlined,
                          color: Color.fromARGB(255, 15, 3, 124),
                        ),
                        hintText: 'Enter  Permanent Address'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter  Permanent Address";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 00.2,
                  ),
                  TextFormField(
                    controller: _taskControllerpermanent1,
                    decoration: InputDecoration(),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 00.2,
                  ),
                  TextFormField(
                    controller: _taskControllerpermanent2,
                    decoration: InputDecoration(),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    maxLength: 12,
                    controller: _taskControlleraadhar,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.qr_code_2,
                          color: Color.fromARGB(255, 5, 204, 12),
                        ),
                        hintText: 'Enter  Aadhar Number'),
                    validator: (value) {
                      if (value != null && value.length < 12 && value.isEmpty) {
                        return "Enter Aadhar Number 12 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          getgall();
                        },
                        child: Container(
                          margin: EdgeInsets.all(15),
                          height: MediaQuery.of(context).size.height * .35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 252, 252),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: file == null
                                // ignore: prefer_const_constructors
                                ? InkWell(
                                    onTap: () {
                                      getgall();
                                    },
                                    child: Icon(
                                      Icons.image,
                                      size: 50,
                                    ),
                                  )
                                : Image.file(file!, fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 13,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         uploadFile();
                  //       },
                  //       child: const Text("Upload Image"),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllerhscper,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.percent_rounded,
                          color: Color.fromARGB(255, 243, 0, 231),
                        ),
                        hintText: 'Enter  H.S.C Mark'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter H.S.C Mark";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 00.2,
                  ),
                  TextFormField(
                    controller: _taskControllerhscschool,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.school_rounded,
                          color: Color.fromARGB(255, 0, 22, 41),
                        ),
                        hintText: 'Enter  H.S.C School'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter H.S.C School";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 00.2,
                  ),
                  TextFormField(
                    controller: _taskControllerboard,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.bookmark,
                          color: Color.fromARGB(255, 239, 193, 26),
                        ),
                        hintText: 'Enter  H.S.C  Board'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter  H.S.C Board";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _taskControllersslcper,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.percent_rounded,
                          color: Colors.greenAccent,
                        ),
                        iconColor: Colors.red,
                        hintText: 'Enter  S.SL.C Mark'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter  S.SL.C  Mark";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 00.2,
                  ),
                  TextFormField(
                    controller: _taskControllersslcschool,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        suffixIcon: Icon(
                          Icons.school_rounded,
                          // ignore: prefer_const_constructors
                          color: Color.fromARGB(255, 0, 22, 41),
                        ),
                        hintText: 'Enter   S.SL.C  School'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter  S.SL.C  School";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 00.2,
                  ),
                  TextFormField(
                    controller: _taskControllersslcboard,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.bookmark_added,
                          color: Color.fromARGB(255, 239, 193, 26),
                        ),
                        hintText: 'Enter   S.SL.C   Board'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter   S.SL.C  Board";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      uploadFile();
                    },
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialogs(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () => Navigator.pop(context, false),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Info"),
    content: Text("Submitted"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () => Navigator.pop(context, false),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Info"),
    content: Text("Already Exists"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
