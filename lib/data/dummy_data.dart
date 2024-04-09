import 'package:flutter/services.dart';
import 'package:onboard_animation/model/Faculty_Profile.dart';
import 'package:onboard_animation/model/StudentProfile.dart';
import 'package:onboard_animation/model/researchTeam.dart';
import 'package:onboard_animation/model/studentMyproject.dart';
import 'package:onboard_animation/model/project.dart';
import 'package:onboard_animation/model/research.dart';
import 'package:onboard_animation/model/studentResearchEnlisted.dart';
import 'package:onboard_animation/model/projectTeam.dart';
import 'package:onboard_animation/model/projectRequested.dart';

var registeredFaculty_profile = [
  const FacultyProfile(
    empid: '132',
    email: 'tuntunlovesladoos@vit.ac.in',
    domain: 'Quantum Physics',
    school: 'SAS',
    designation: 'HoD',
    facultyname: 'Tuntun Mausi',
    contactnumber: '9453789256',
    linkedinid: 'tuntun-mausi',
    password: 'motichor',
  ),
  const FacultyProfile(
    empid: '133',
    email: 'robert.jeffrey@vit.ac.in',
    domain: 'Digital Image Processing',
    school: 'SCOPE',
    designation: 'Assistant Professor',
    facultyname: 'Robert Jeffrey',
    contactnumber: '9647839023',
    linkedinid: 'robertjeffreyy',
    password: 'robby',
  ),
  const FacultyProfile(
    empid: '134',
    email: 'Sunita Garg',
    domain: 'Semiconductor Chips',
    school: 'SENSE',
    designation: 'Sr.Assistant Professor',
    facultyname: 'Sunita Garg',
    contactnumber: '9487456789',
    linkedinid: 'sunitakgarg',
    password: 'gargs',
  ),
];
var registeredStudent_profile = [
  const StudentProfile(
    registrationnumber: '22BCE1034',
    email: 'tanya.sharma2022@vitstudent.ac.in',
    gender: 'Female',
    school: 'SCOPE',
    programme: 'B.Tech',
    skillsets: 'Web Development,UI/UX Design',
    studentname: 'Tanya Sharma',
    contactnumber: '9678450389',
    linkedinid: 'tanya-sharma',
    githubid: 'tany',
    technicallanguages: 'CPP,C,JavaScript',
    passoutyear: '2026',
    password: 'tanui',
  ),
  const StudentProfile(
    registrationnumber: '23BEE1244',
    email: 'aryan.thakur2023@vitstudent.ac.in',
    gender: 'Male',
    school: 'SELECT',
    programme: 'B.Tech',
    skillsets: 'VLSI',
    studentname: 'Aryan Thakur',
    contactnumber: '9555450389',
    linkedinid: 'aryanthakur',
    githubid: 'aryan',
    technicallanguages: 'MATLAB,R',
    passoutyear: '2027',
    password: 'GYHU',
  ),
  const StudentProfile(
    registrationnumber: '21MIA1677',
    email: 'divya.banerjee2021@vitstudent.ac.in',
    gender: 'Female',
    school: 'SCOPE',
    programme: 'B.Tech',
    skillsets: 'Web Development,Machine Learning',
    studentname: 'Divya Banerjee',
    contactnumber: '9678454569',
    linkedinid: 'banerjeedivya',
    githubid: 'bandivya',
    technicallanguages: 'Python,JavaScript',
    passoutyear: '2026',
    password: 'diyab',
  ),
];
var my_projects = [
  const Smyproject(
    registrationnumber: '22BCE1034',
    proposedon: '24-03-2024',
    title: 'Remote Sensing',
    status: 'Open',
  ),
  const Smyproject(
    registrationnumber: '22BCE1034',
    proposedon: '04-02-2024',
    title: 'Smart Dustbin using ML',
    status: 'Closed',
  ),
  const Smyproject(
    registrationnumber: '22BCE1034',
    proposedon: '20-12-2023',
    title: 'ASL to Text Converter',
    status: 'Closed',
  ),
  const Smyproject(
    registrationnumber: '23BEE1244',
    proposedon: '24-03-2024',
    title: 'VLSI using IC Chips',
    status: 'Open',
  ),
  const Smyproject(
    registrationnumber: '23BEE1244',
    proposedon: '12-03-2024',
    title: 'Microcontroller based Digital Voltmeter',
    status: 'Open',
  ),
  const Smyproject(
    registrationnumber: '23BEE1244',
    proposedon: '06-01-2024',
    title: 'Fire Detection and Alarm Mini System',
    status: 'Closed',
  ),
  const Smyproject(
    registrationnumber: '21MIA1677',
    proposedon: '24-03-2024',
    title: 'Change Detection Model using SVM',
    status: 'Open',
  ),
  const Smyproject(
    registrationnumber: '21MIA1677',
    proposedon: '05-02-2024',
    title: 'Stock Prediction',
    status: 'Closed',
  ),
  const Smyproject(
    registrationnumber: '21MIA1677',
    proposedon: '20-11-2023',
    title: 'Autonomous Driving System',
    status: 'Closed',
  ),
];

var research_team = [
  const Researchteam(
      registrationnumber: '22BCE1034',
      studentname: 'Tanya Sharma',
      empid: '501',
      researchid: '1800'),
  const Researchteam(
    registrationnumber: '23BEE1244',
    studentname: 'Aryan Thakur',
    researchid: '1801',
    empid: '502',
  ),
  const Researchteam(
    registrationnumber: '21MIA1677',
    studentname: 'Divya Banerjee',
    researchid: '1802',
    empid: '503',
  ),
  const Researchteam(
    registrationnumber: '22BCE1499',
    studentname: 'Piyush Gupta',
    researchid: '1803',
    empid: '504',
  ),
  const Researchteam(
    registrationnumber: '22BEE1789',
    studentname: 'Shilpi Anand',
    researchid: '1804',
    empid: '501',
  ),
];

var projects = [
  const Project(
    pid: 'P01',
    proposedon: '20-11-2023',
    projecttitle: 'Autonomous Driving System',
    domain: 'Robotics',
    requirements: 'Mechanics',
    description: '',
    typeofproject: 'Project',
    studentregno: '22BAI1234',
    facultyempid: '51234',
  ),
  const Project(
    pid: 'P02',
    proposedon: '10-01-2023',
    projecttitle: 'Neural Networking',
    domain: 'Machine Learning',
    requirements: 'ML',
    description: 'Matrix decomposition using neural networking',
    typeofproject: 'Project',
    studentregno: '22BMV1334',
    facultyempid: '51256',
  ),
  const Project(
    pid: 'P03',
    proposedon: '02-08-2024',
    projecttitle: 'Autonomous Drone System',
    domain: 'Robotics',
    requirements: 'Arduino, C++',
    description: 'A smart autonomous drone system using arduino',
    typeofproject: 'Hackathon',
    studentregno: '22BRS1204',
    facultyempid: '51204',
  ),
  const Project(
    pid: 'P04',
    proposedon: '18-05-2022',
    projecttitle: 'Smart Dustbin',
    domain: 'Robotics',
    requirements: 'Arduino , C/C++',
    description: 'A smart dustbin system using arduino',
    typeofproject: 'Project',
    studentregno: '22BPS1034',
    facultyempid: '51543',
  ),
  const Project(
    pid: 'P05',
    proposedon: '12-07-2021',
    projecttitle: 'Automatic Plant Watering System',
    domain: 'Robotics',
    requirements: 'Arduino, C/C++',
    description: 'A smart plant watering system using arduino',
    typeofproject: 'Hackathon',
    studentregno: '22BMH1007',
    facultyempid: '50034',
  ),
];

var research = [
  const Research(
    researchid: 'R01',
    empid: '50034',
    title: 'Neural Networks',
    domain: 'Robotics',
    requirements: 'Arduino, C/C++',
    referencepapers: '',
  ),
  const Research(
    researchid: 'R02',
    empid: '51543',
    title: 'Robotic Arm',
    domain: 'Robotics',
    requirements: 'Arduino , C/C++',
    referencepapers: '',
  ),
  const Research(
    researchid: 'R03',
    empid: '51204',
    title: 'Neural Networking',
    domain: 'Machine Learning',
    requirements: 'ML',
    referencepapers: '',
  ),
];
var enlisted_student = [
  const Sresearchenlisted(
    registrationnumber: '22BCE1034',
    empid: '50034',
    title: 'Neural Networks',
    status: 'Approved',
    studentname: 'Tanya Sharma',
    researchid: 'R01',
  ),
  const Sresearchenlisted(
    registrationnumber: '23BEE1244',
    empid: '51543',
    title: 'Robotic Arm',
    status: 'Pending',
    studentname: 'Aryan Thakur',
    researchid: 'R02',
  ),
  const Sresearchenlisted(
    registrationnumber: '21MIA1677',
    empid: '51204',
    title: 'Neural Networking',
    status: 'Pending',
    studentname: 'Divya Banerjee',
    researchid: 'R03',
  ),
];
var project_requested = [
  const Projectrequested(
    pid: 'P01',
    title: 'Autonomous Driving System',
    specifications: 'Machine Learning',
    registrationnumber: '22BAI1234',
    status: 'Pending',
  ),
  const Projectrequested(
    pid: 'P02',
    title: 'Neural Networking',
    specifications: 'Machine Learning',
    registrationnumber: '22BMV1334',
    status: 'Accepted',
  ),
  const Projectrequested(
    pid: 'P03',
    title: 'Autonomous Drone System',
    specifications: 'Sensors and Actuators',
    registrationnumber: '22BRS1204',
    status: 'Denied',
  ),
];
var proj_team = [
  const Projectteam(
    pid: 'P01',
    teammember: 'John Smith,Ivy Willow',
    registrationnumber: '20BPS1334,20BCE1653',
  ),
  const Projectteam(
    pid: 'P02',
    teammember: 'Tom Riddle,Luna Lovegood',
    registrationnumber: '22BEC1000,22BEE1067',
  ),
  const Projectteam(
    pid: 'P03',
    teammember: 'Harry Potter,Ginny Weasley',
    registrationnumber: '22BAI5045,22BCE1098',
  ),
];
