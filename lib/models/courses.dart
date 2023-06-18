import 'package:flutter/material.dart';

class Course {
  String? id;
  String? name;
  String? description;
  List<Course>? prerequisites = [];
  int? creditHours;
  DateTime? time;
  String? content;
  // List<Student>? students;
  int? maxEnrollments;

  Course({
    @required this.name,
    this.description,
    this.prerequisites,
    @required this.creditHours,
    this.time,
    this.content,
    // this.students,
    @required this.maxEnrollments,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      // id: json['_id'],
      name: json['name'],
      description: json['description'],
      prerequisites: List<Course>.from(json['prerequisites']),
      creditHours: json['creditHours'],
      time: DateTime.parse(json['time']),
      content: json['content'],
      // students: List<String>.from(json['students']),
      maxEnrollments: json['maxEnrollments'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['prerequisites'] = this.prerequisites;
    data['creditHours'] = this.creditHours;
    // data['time'] = this.time.toIso8601String();
    data['content'] = this.content;
    // data['students'] = this.students;
    data['maxEnrollments'] = this.maxEnrollments;
    return data;
  }
}