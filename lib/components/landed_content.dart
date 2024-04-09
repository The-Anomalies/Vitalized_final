import 'package:flutter/material.dart';

class LandingContent extends StatelessWidget {
  const LandingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "VITALIZED",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Connect,\nCollaborate, Innovate\nWhere Ideas Meet Opportunity",
            style: TextStyle(
                fontSize: 24, color: const Color.fromARGB(255, 35, 39, 40)),
          ),
          // Text(
          //   "Where Ideas Meet Opportunity",
          //   style: TextStyle(fontSize: 24, color: Colors.blueGrey.shade300),
          // ),
        ],
      ),
    );
  }
}
