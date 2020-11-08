import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_project/components/gradientContainerHomeClip.dart';
import 'package:todo_project/constants/colors/colors_styles.dart';
import 'package:todo_project/constants/styles/text_styles.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  var _countTasks = 0;

  List<String> _tasks = List();

  final TextEditingController _taskController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _addTask() {
    if (_formKey.currentState.validate()) {
      setState(() {
        _tasks.add(_taskController.text);
        _taskController.clear();
        _countTasks = _countTasks + 1;
      });
    }
  }

  void _deleteTask() {
    setState(() {
      _tasks.remove(_taskController.text);
      _countTasks = _countTasks - 1;
      if (_countTasks < 0) {
        _countTasks = 0;
      }
    });
  }

  void _clearAllTasks() {}
  void _setAllTrue() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              ClipPath(
                clipper: GradientContainerClip(),
                child: Container(
                  height: 330,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          azulEscuro,
                          azulClaro,
                        ]),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Bem vindx!',
                          style: gradientContainer_style,
                        ),
                        Text(
                          'Número de tarefas: ${_countTasks}',
                          style: gradientContainer_style,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Form(
                  key: _formKey,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _taskController,
                          decoration: InputDecoration(
                            hintText: 'Nova tarefa...',
                          ),
                          validator: (value) {
                            if (value.trim().isEmpty) {
                              return 'Você precisa digitar o nome de sua tarefa.';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => _addTask(),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: _tasks.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_tasks[index]),
                                Text(DateFormat('d MMM y')
                                    .format(DateTime.now())),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: IconButton(
                                icon: Icon(Icons.delete),
                                color: Colors.red,
                                onPressed: () => _deleteTask(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
