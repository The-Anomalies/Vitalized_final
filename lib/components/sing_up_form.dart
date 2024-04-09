import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
                  ElevatedButton(
                    onPressed: () async {
                      String emailOrRegNo = _registerETC
                          .text; // Assuming this can be either email or reg_no
                      String password = _passwordTC.text;
                      final sm = ScaffoldMessenger.of(context);

                      // Query the 'student' table for a user with the provided email or reg_no
                      final response = await Supabase.instance.client
                          .from('student')
                          .select(
                              'password') // Assuming you have a hashed password column
                          .eq('email',
                              emailOrRegNo) // or .eq('reg_no', emailOrRegNo) depending on your logic
                          .single();
                      print(response);
                      if (response.isEmpty) {
                        sm.showSnackBar(const SnackBar(
                            content:
                                Text("User not found or an error occurred")));
                      } else {
                        // Assuming you have a secure way to compare the hashed passwords
                        // This is a placeholder for your password comparison logic

                        if (response['password'] == password) {
                          sm.showSnackBar(const SnackBar(
                              content:
                                  Text("You have successfully logged in")));
                        } else {
                          sm.showSnackBar(const SnackBar(
                              content: Text("Incorrect password")));
                        }
                      }
                    },
                    child: const Text('Sign up'),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 16),
            const SizedBox(height: 200),
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
