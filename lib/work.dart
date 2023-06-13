import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  List<WorkData> workList = [
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia'),
    WorkData(
        period: 'Oct 2019 - Des 2020',
        company: 'PT Jasamedika Saranatama 2',
        title: 'Fullstack Programmer',
        job: 'Developed Management System',
        location: 'Bandung, Indonesia')
  ];

  Widget templateWorkList(data) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
      decoration: BoxDecoration(
          color: Colors.grey[400],
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Column(
        children: [
          Text(data.period),
          Divider(
            color: Colors.black,
          ),
          Text(data.company),
          Text(data.title),
          Text(data.job),
          Text(data.location),
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
        child: Column(children: [
          Expanded(
            child: ListView(
              children: workList.map((data) => templateWorkList(data)).toList(),
            ),
          )
        ]),
      ),
    );
  }
}

class WorkData {
  String period;
  String company;
  String title;
  String job;
  String location;

  WorkData(
      {required this.period,
      required this.company,
      required this.title,
      required this.job,
      required this.location});
}
