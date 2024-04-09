import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sizer/sizer.dart';
import 'package:onboard_animation/core/res/color.dart';
import 'package:onboard_animation/widgets/circle_gradient_icon.dart';
import 'package:onboard_animation/widgets/task_group.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import 'profile.dart';
import 'findProj.dart';
import 'pending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _buildBody(controller.selectedIndex.value)),
      bottomNavigationBar: Container(
        color: Colors.pink,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.pink,
            color: Colors.white,
            activeColor: Colors.pink,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.all(16),
            selectedIndex: controller.selectedIndex.value,
            onTabChange: (index) => controller.selectedIndex.value = index,
            tabs: const [
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.event_available,
                text: 'Event',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.event_note,
                text: 'Pending',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const ProfileScreen(); //placeholder for profile page
      case 1:
        return _homePage(); // Placeholder for homepage page
      case 2:
        return const findProj(); // Placeholder for find_project page
      case 3:
        return const FindProjScreen(); // Placeholder for pending_project page
      default:
        return Container(); // Fallback
    }
  }

  Widget _homePage() {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                _taskHeader(),
                const SizedBox(
                  height: 15,
                ),
                buildGrid(),
                const SizedBox(
                  height: 25,
                ),
                _onGoingHeader(),
                const SizedBox(
                  height: 10,
                ),
                const OnGoingProject(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: CircleGradientIcon(
            color: Colors.pink,
            onTap: () {},
            size: 60,
            iconSize: 30,
            icon: Icons.add,
          ),
        )
      ],
    );
  }

  Row _onGoingHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "On Going Projects",
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Text(
            "See all",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }

  Row _taskHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SelectableText(
          "My Projects",
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
          toolbarOptions: const ToolbarOptions(
            copy: true,
            selectAll: true,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.blue[400],
            ))
      ],
    );
  }

  StaggeredGrid buildGrid() {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      children: const [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1.3,
          child: TaskGroupContainer(
            color: Colors.pink,
            icon: Icons.event_available_rounded,
            taskCount: 1,
            taskGroup: "Project 1",
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TaskGroupContainer(
            color: Colors.orange,
            isSmall: true,
            icon: Icons.mobile_friendly,
            taskCount: 2,
            taskGroup: "Mobile App Development",
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1.3,
          child: TaskGroupContainer(
            color: Colors.green,
            icon: Icons.article,
            taskCount: 3,
            taskGroup: "Research 1",
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TaskGroupContainer(
            color: Colors.blue,
            isSmall: true,
            icon: Icons.event_available_sharp,
            taskCount: 4,
            taskGroup: "Hackathon",
          ),
        ),
      ],
    );
  }
}

class OnGoingProject extends StatelessWidget {
  const OnGoingProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Solvathon",
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.people_alt_rounded,
                      color: Colors.purple[300],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "9th April",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Team of 5",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Icon(
            Icons.rocket_rounded,
            size: 60,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}

class BottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    final firstControlPoint = Offset(size.width * 0.6, 0);
    final firstEndPoint = Offset(size.width * 0.58, 44);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    final secControlPoint = Offset(size.width * 0.55, 50);
    final secEndPoint = Offset(size.width * 0.5, 50);
    path.quadraticBezierTo(
      secControlPoint.dx,
      secControlPoint.dy,
      secEndPoint.dx,
      secEndPoint.dy,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.purple),
    Container(color: Colors.blue)
  ];
}
