import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:onboard_animation/data/dummy_data.dart';
import 'package:onboard_animation/model/Faculty_Profile.dart';
import 'package:onboard_animation/model/StudentProfile.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);
  final _registerETC = TextEditingController();
  final _passwordTC = TextEditingController();
  // final _notesStream =
  //     Supabase.instance.client.from('student').stream(primaryKey: ['reg_no']);
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
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String desiredId = _registerETC.text;
                      FacultyProfile? desiredFacultyProfile =
                          registeredFaculty_profile.firstWhere(
                              (faculty) => faculty.id == desiredId,
                              orElse: () => null);
                      StudentProfile? desiredStudentProfile =
                          registeredFaculty_profile.firstWhere(
                              (faculty) => faculty.id == desiredId,
                              orElse: () => null);
                      bool auth = (desiredStudentProfile!.password ==
                              _passwordTC.text ||
                          desiredFacultyProfile!.password == _passwordTC.text);
                      if (desiredFacultyProfile != null && auth) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignUpForm(), //we have to change this value
                          ),
                        );
                      } else if (desiredStudentProfile != null && auth) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignUpForm(), //we have to change this value
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('user not found'),
                          ),
                        );
                      }
                      ;
                    },
                    child: const Text('Sign up'),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 16),
            const SizedBox(height: 170),
            Center(
              child: Text(
                "Already have an account? Sign in.",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
