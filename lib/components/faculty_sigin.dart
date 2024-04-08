import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Faculty_signin extends StatelessWidget {
  Faculty_signin({Key? key}) : super(key: key);

  final _regSTEC = TextEditingController();
  final _passwordSTEC = TextEditingController();
  final _nameSTEC = TextEditingController();
  final _emailSTEC = TextEditingController();
  final _contactNumberSTEC = TextEditingController();
  final _domainSTEC = TextEditingController();
  final _designationStec = TextEditingController();
  final _linkedInSTEC = TextEditingController();
  final _schoolSTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create your faculty account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Personal Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 16),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    controller: _regSTEC,
                    decoration: InputDecoration(
                      hintText: "employee ID",
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
                    controller: _passwordSTEC,
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
                  TextFormField(
                    obscureText: true,
                    controller: _nameSTEC,
                    decoration: InputDecoration(
                      hintText: "Name",
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
                  TextFormField(
                    obscureText: true,
                    controller: _emailSTEC,
                    decoration: InputDecoration(
                      hintText: "Email",
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
                  TextFormField(
                    obscureText: true,
                    controller: _contactNumberSTEC,
                    decoration: InputDecoration(
                      hintText: "Contact Number",
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
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Domain and Experience",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    obscureText: true,
                    controller: _domainSTEC,
                    decoration: InputDecoration(
                      hintText: "Domain",
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
                  TextFormField(
                    obscureText: true,
                    controller: _designationStec,
                    decoration: InputDecoration(
                      hintText: "Designation",
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
                  TextFormField(
                    obscureText: true,
                    controller: _linkedInSTEC,
                    decoration: InputDecoration(
                      hintText: "LinkedIn ID",
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
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    controller: _schoolSTEC,
                    decoration: InputDecoration(
                      hintText: "school",
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
                  const SizedBox(height: 16),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            // const SizedBox(height: 16),
            const SizedBox(height: 100),
            Center(
                child: ElevatedButton(
                    onPressed: () async {
                      String _reg = _regSTEC.text;
                      String _password = _passwordSTEC.text;
                      String _name = _nameSTEC.text;
                      String _email = _emailSTEC.text;
                      String _cono = _contactNumberSTEC.text;
                      String _school = _schoolSTEC.text;
                      String _domain = _domainSTEC.text;
                      String _designation = _designationStec.text;
                      String _linkedIn = _linkedInSTEC.text;

                      await Supabase.instance.client.from('student').insert({
                        'reg_no': _reg,
                        'password': _password,
                        'name': _name,
                        'email': _email,
                        'contact_number': _cono,
                        'designation': _designation,
                        'LinkedIn_id': _linkedIn,
                        'school': _school,
                        'Domain': _domain,
                      });
                    },
                    child: const Text('sign in')))
          ],
        ),
      ),
    );
  }
}
