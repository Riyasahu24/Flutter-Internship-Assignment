import 'package:assignment/dataapi.dart';
import 'package:assignment/datamodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<EmployeeDataModel> employeeData;
  int myindex = 0;
  // List _page_to_page = [HomeScreen(), "search", "Download", "Profile"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    employeeData = dataApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Employees'),
      ),
      body: SafeArea(
          child: FutureBuilder(
              future: employeeData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  var data = snapshot.data!.data;
                  return Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: ListView.builder(
                          itemCount: data.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                child: Placeholder(),
                              ),
                              title: Text(
                                data[index].employeeName.toString(),
                              ),
                              subtitle: Text(
                                "Salary - " +
                                    data[index].employeeSalary.toString(),
                              ),
                              trailing: Text("Age - " +
                                  data[index].employeeAge.toString()),
                            );
                          }),
                    ),
                  );
                }
              })),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black.withOpacity(0.6)),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.download), label: "Download"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")
      ]),
    );
  }
}
