import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:onboard_animation/core/res/color.dart';
import 'package:onboard_animation/model/task.dart';
import 'package:onboard_animation/widgets/circle_gradient_icon.dart';
import 'package:onboard_animation/widgets/task.dart';

class FindProjScreen extends StatefulWidget {
  const FindProjScreen({Key? key}) : super(key: key);

  @override
  State<FindProjScreen> createState() => _FindProjState();
}

class _FindProjState extends State<FindProjScreen> {
  final todaysDate = DateTime.now();
  late int _dateIndex;
  final double _width = 70;
  final double _margin = 15;
  final _scrollController = ScrollController();
  late int days;
  final List<TaskModel> _tasksList = [
    TaskModel(
        from: DateTime(2022, 03, 16, 12, 00),
        to: DateTime(2022, 03, 16, 1, 00),
        taskName: "Hackathon 1"),
    TaskModel(
        from: DateTime(2022, 03, 16, 4, 00),
        to: DateTime(2022, 03, 16, 5, 00),
        taskName: "AI ML Research Paper"),
  ];

  void getDates() {
    final date = DateTime(todaysDate.year, todaysDate.month);
    days = DateTimeRange(
      start: date,
      end: DateTime(todaysDate.year, todaysDate.month + 1),
    ).duration.inDays;
    _dateIndex = todaysDate.day;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        _scroll();
      },
    );
    setState(() {});
  }

  void _scroll() {
    _scrollController.animateTo(
      (days * _dateIndex.toDouble()) +
          (_dateIndex.toDouble() * _width) -
          (_dateIndex * _margin),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    getDates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
        // Remove the back button arrow
        // Other app bar properties...
      ),
      body: _buildBody(context),
    );
  }

  Container _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          _buildDateHeader(context),
          const SizedBox(
            height: 20,
          ),
          _buildDateDays(),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: _tasksList
                .map(
                  (e) => TaskWidget(
                    taskModel: e,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  Row _buildDateHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PENDING PROJECTS",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Colors.black,
                  fontSize:
                      30 // Change the color to white, or any other color you prefer
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: CircleGradientIcon(
            onTap: () {},
            icon: Icons.calendar_month,
            color: Colors.pink,
            iconSize: 24,
            size: 50,
          ),
        ),
      ],
    );
  }

  SizedBox _buildDateDays() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days,
        controller: _scrollController,
        itemBuilder: (context, index) {
          final monthDate =
              DateTime(todaysDate.year, todaysDate.month, index + 1);
          return InkWell(
            onTap: () {
              _dateIndex = index;
              _scroll();
            },
            child: Container(
              width: _width,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: _margin,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: todaysDate.day == (index + 1)
                    ? AppColors.getLinearGradient(Colors.pink)
                    : null,
                borderRadius: BorderRadius.circular(65),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 0.2,
                    //   offset: const Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${index + 1}",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 24,
                            color: todaysDate.day == (index + 1)
                                ? Colors.white
                                : null,
                          )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    DateFormat('EEE').format(monthDate),
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 24,
                          color: todaysDate.day == (index + 1)
                              ? Colors.white
                              : null,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
