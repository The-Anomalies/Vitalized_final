import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:onboard_animation/core/res/color.dart';
import 'package:onboard_animation/model/task.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel taskModel;
  const TaskWidget({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  "${taskModel.from.hour} PM",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 270,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: AppColors.getDarkLinearGradient(
                      Colors.pink,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: const Offset(2, 6),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      taskModel.taskName,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${taskModel.from.hour}  PM - ${taskModel.to.hour} PM",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
