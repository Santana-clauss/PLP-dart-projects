// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
//  // Import TaskDetailsPage

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   List<Task> tasks = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: const Text("TaskTrov"),
//         backgroundColor: orangeColor,
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             _scaffoldKey.currentState!.openDrawer();
//           },
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: orangeColor,
//               ),
//               child: Text(
//                 'User Profile',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             // Add your Drawer items here
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Text(
//                 "Hello Santana",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                   color: orangeColor,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: tasks.length,
//                 itemBuilder: (context, index) {
//                   final task = tasks[index];
//                   return Card(
//                     margin: const EdgeInsets.symmetric(vertical: 10),
//                     child: ListTile(
//                       leading: Checkbox(
//                         value: task.completed,
//                         onChanged: (bool? value) {
//                           setState(() {
//                             task.completed = value ?? false;
//                           });
//                         },
//                       ),
//                       title: Text(
//                         task.title,
//                         style: TextStyle(
//                           decoration: task.completed
//                               ? TextDecoration.lineThrough
//                               : null,
//                         ),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           if (task.description != null &&
//                               task.description!.isNotEmpty)
//                             Text(task.description!),
//                           if (task.dueDate != null &&
//                               task.dueDate!.isNotEmpty &&
//                               task.dueDate != '0000-00-00')
//                             Text("Due: ${task.dueDate}"),
//                         ],
//                       ),
//                       trailing: IconButton(
//                         icon: Icon(Icons.delete),
//                         onPressed: () {
//                           setState(() {
//                             tasks.removeAt(index);
//                           });
//                         },
//                       ),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => TaskDetailsPage(task: task),
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _showTaskInputDialog,
//         child: const Icon(Icons.add),
//         backgroundColor: orangeColor,
//       ),
//     );
//   }

//   void _showTaskInputDialog() {
//     final TextEditingController taskNameController = TextEditingController();
//     final TextEditingController taskDescriptionController =
//         TextEditingController();
//     DateTime? selectedDate;

//     showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Add New Task'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 TextField(
//                   controller: taskNameController,
//                   decoration: InputDecoration(labelText: 'Task Name'),
//                 ),
//                 TextField(
//                   controller: taskDescriptionController,
//                   decoration: InputDecoration(labelText: 'Description'),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.calendar_today),
//                   onPressed: () async {
//                     final DateTime? picked = await showDatePicker(
//                       context: context,
//                       initialDate: selectedDate ?? DateTime.now(),
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(2100),
//                     );
//                     if (picked != null && picked != selectedDate) {
//                       setState(() {
//                         selectedDate = picked;
//                       });
//                     }
//                   },
//                 ),
//                 if (selectedDate != null) Text(selectedDate.toString()),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('Add'),
//               onPressed: () {
//                 setState(() {
//                   tasks.add(Task(
//                     title: taskNameController.text,
//                     description: taskDescriptionController.text,
//                     dueDate: selectedDate?.toString() ?? "",
//                     completed: false,
//                   ));
//                 });
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
