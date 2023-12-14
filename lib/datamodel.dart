class EmployeeDataModel {
  String status;
  List<Employee> data;
  String message;

  EmployeeDataModel(
      {required this.status, required this.data, required this.message});

  factory EmployeeDataModel.fromJson(Map<String, dynamic> json) {
    return EmployeeDataModel(
      status: json['status'],
      data: (json['data'] as List).map((e) => Employee.fromJson(e)).toList(),
      message: json['message'],
    );
  }
}

class Employee {
  int id;
  String employeeName;
  int employeeSalary;
  int employeeAge;
  String profileImage;

  Employee({
    required this.id,
    required this.employeeName,
    required this.employeeSalary,
    required this.employeeAge,
    required this.profileImage,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'] ?? "Data not found",
      employeeName: json['employee_name'] ?? "Data not found",
      employeeSalary: json['employee_salary'] ?? "Data not found",
      employeeAge: json['employee_age'] ?? "Data not found",
      profileImage: json['profile_image'] ?? "Data not found",
    );
  }
}
