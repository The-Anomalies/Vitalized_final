  import 'package:flutter/material.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';

  class Student_signin extends StatelessWidget {
    Student_signin({Key? key}) : super(key: key);

    final _regSTEC = TextEditingController();
    final _passwordSTEC = TextEditingController();
    final _nameSTEC = TextEditingController();
    final _emailSTEC = TextEditingController();
    final _contactNumberSTEC = TextEditingController();
    final _genderSTEC = TextEditingController();
    final _skillSTEC = TextEditingController();
    final _techLanguageSTEC = TextEditingController();
    final _githubIDSTEC = TextEditingController();
    final _linkedInSTEC = TextEditingController();
    final _programSTEC = TextEditingController();
    final _schoolSTEC = TextEditingController();
    final _yearopSTEC = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create an student account",
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
                        hintText: "Registration number",
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
                    const SizedBox(height: 24),
                    TextFormField(
                      obscureText: true,
                      controller: _genderSTEC,
                      decoration: InputDecoration(
                        hintText: "Gender",
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
                        "Skills and Experience",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      obscureText: true,
                      controller: _skillSTEC,
                      decoration: InputDecoration(
                        hintText: "Skill Set",
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
                      controller: _techLanguageSTEC,
                      decoration: InputDecoration(
                        hintText: "Technical languages",
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
                      controller: _githubIDSTEC,
                      decoration: InputDecoration(
                        hintText: "Github Id",
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
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "VIT Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      obscureText: true,
                      controller: _programSTEC,
                      decoration: InputDecoration(
                        hintText: "Program",
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
                      controller: _schoolSTEC,
                      decoration: InputDecoration(
                        hintText: "School",
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
                      controller: _yearopSTEC,
                      decoration: InputDecoration(
                        hintText: "Year of Passing",
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
                        String _gender = _genderSTEC.text;
                        String _skill = _skillSTEC.text;
                        String _techLang = _techLanguageSTEC.text;
                        String _github = _githubIDSTEC.text;
                        String _linkedIn = _linkedInSTEC.text;
                        String _program = _programSTEC.text;
                        String _school = _schoolSTEC.text;
                        String _yop = _yearopSTEC.text;

                        await Supabase.instance.client.from('student').insert({
                          'reg_no': _reg,
                          'password': _password,
                          'name': _name,
                          'email': _email,
                          'contact_number': _cono,
                          'gender': _gender,
                          'skills': _skill,
                          'technical_language': _techLang,
                          'github_id': _github,
                          'LinkedIn_id': _linkedIn,
                          'program': _program,
                          'school': _school,
                          'year_of_passing': _yop
                        });
                      },
                      child: const Text('sign in')))
            ],
          ),
        ),
      );
    }
  }
