import 'package:flutter/material.dart';

class Assignment {
  String name;
  String description;
  bool isCompleted;

  Assignment({required this.name, required this.description, this.isCompleted = false});
}

class StudentAssignmentPage extends StatefulWidget {
  @override
  _StudentAssignmentPageState createState() => _StudentAssignmentPageState();
}

class _StudentAssignmentPageState extends State<StudentAssignmentPage> {
  List<Assignment> _assignedAssignments = [    Assignment(name: 'Math Assignment 1', description: 'Complete problems 1-10'),    Assignment(name: 'Science Lab Report', description: 'Submit report on photosynthesis'),  ];

  List<Assignment> _completedAssignments = [    Assignment(name: 'English Essay', description: 'Submit 1000-word essay on The Great Gatsby', isCompleted: true),  ];

  String _selectedSection = 'assigned';

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _addAssignment() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _assignedAssignments.add(Assignment(
          name: _nameController.text,
          description: _descriptionController.text,
        ));
        _nameController.clear();
        _descriptionController.clear();
      });
      Navigator.pop(context);
    }
  }

  void _completeAssignment(Assignment assignment) {
    setState(() {
      assignment.isCompleted = true;
      _assignedAssignments.remove(assignment);
      _completedAssignments.add(assignment);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Student Assignments'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Add Assignment'),
                    content: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: _nameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: _descriptionController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a description';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Description',
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: _addAssignment,
                        child: Text('Add'),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedSection = 'assigned';
                  });
                },
                child: Text('Assigned'),
                style: _selectedSection == 'assigned'
                    ? ElevatedButton.styleFrom(primary: Color(0xff3D649F))
                    : null,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedSection = 'completed';
                  });
                },
                child: Text('Completed'),
                style: _selectedSection ==
                    '_completed' ? ElevatedButton.styleFrom(primary: Color(0xff3D649F)) : null,
              ),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: _selectedSection == 'assigned'
                ? ListView.builder(
              itemCount: _assignedAssignments.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(_assignedAssignments[index].name),
                    subtitle: Text(_assignedAssignments[index].description),
                    trailing: IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        _completeAssignment(_assignedAssignments[index]);
                      },
                    ),
                  ),
                );
              },
            )
                : ListView.builder(
              itemCount: _completedAssignments.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(_completedAssignments[index].name),
                    subtitle: Text(_completedAssignments[index].description),
                    leading: Icon(Icons.check_circle, color: Colors.green),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}