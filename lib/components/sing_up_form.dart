import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard_animation/data/dummy_data.dart';
import 'package:onboard_animation/model/Faculty_Profile.dart';
import 'package:onboard_animation/model/StudentProfile.dart';
import 'package:onboard_animation/pages/home.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);
  final _registerETC = TextEditingController();
  final _passwordTC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create an account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 16),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _registerETC,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Email address",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordTC,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      String desiredId = _registerETC.text;
                      FacultyProfile? desiredFacultyProfile =
                          registeredFaculty_profile.firstWhere(
                        (faculty) => faculty.empid == desiredId,
                        orElse: () => const FacultyProfile(
                          empid: '',
                          email: '',
                          domain: '',
                          school: '',
                          designation: '',
                          facultyname: '',
                          contactnumber: '',
                          linkedinid: '',
                          password: '',
                        ),
                      );
                      StudentProfile? desiredStudentProfile =
                          registeredStudent_profile.firstWhere(
                        (student) => student.registrationnumber == desiredId,
                        orElse: () => const StudentProfile(
                          registrationnumber: '',
                          gender: '',
                          programme: '',
                          school: '',
                          skillsets: '',
                          studentname: '',
                          contactnumber: '',
                          linkedinid: '',
                          githubid: '',
                          technicallanguages: '',
                          passoutyear: '',
                          email: '',
                          password: '',
                        ),
                      );

                      if (desiredFacultyProfile.email != '' &&
                          desiredFacultyProfile.password == _passwordTC.text) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else if (desiredStudentProfile.email != '' &&
                          desiredStudentProfile.password == _passwordTC.text) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: const Text('Error'),
                            content: const Text(
                              'User not found or incorrect password',
                            ),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: const Text('Sign in'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 170),
            Center(
              child: Text(
                "Already have an account? Sign in.",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
