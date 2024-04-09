import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.JPG'),
              backgroundColor: Colors.pink,
              
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Shilpi Anand', Icons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '03107085816', Icons.phone),
            const SizedBox(height: 10),
            itemProfile('Address', 'VIT Chennai, Tamil Nadu', Icons.location_city),
            const SizedBox(height: 10),
            itemProfile('Email', 'shilpiAnandr@gmail.com', Icons.mail),
            const SizedBox(height: 20,),
            itemProfile('Skills', 'https://www.linkedin.com/in/namansrivastava2004/', Icons.data_array),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: Text(
  'Edit Profile',
  style: TextStyle(
    color: Colors.pink, // Change the color to pink
  ),
),


              ),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}

