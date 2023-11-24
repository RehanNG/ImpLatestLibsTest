// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

// External package imports
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_datagrid_export/export.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' hide Column, Row;
import 'package:syncfusion_flutter_core/theme.dart';
// Local import
import 'helper/save_file_mobile.dart'
if (dart.library.html) 'helper/save_file_web.dart' as helper;

void main() {
  runApp(MyApp());
}

/// The application that contains datagrid on it.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syncfusion DataGrid Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

/// The home page of the application which hosts the datagrid.
class MyHomePage extends StatefulWidget {
  /// Creates the home page.
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

/// A state class of a [MyHomePage] stateful widget.
class MyHomePageState extends State<MyHomePage> {
  List<Employee> _employees = <Employee>[];
  dynamic employeeListLength;
  late EmployeeDataSource _employeeDataSource;
  int employeesPerPage = 9;

  final GlobalKey<SfDataGridState> _key = GlobalKey<SfDataGridState>();

  final DataGridController _controller = DataGridController();
  @override
  void initState() {
    super.initState();
    _employees = _getEmployeeData();
    _employeeDataSource = EmployeeDataSource(employeeData: _employees);
     employeeListLength= _employees.length;
  }

  Future<void> _exportDataGridToExcel() async {
    final Workbook workbook = _key.currentState!.exportToExcelWorkbook();

    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    await helper.saveAndLaunchFile(bytes, 'DataGrid.xlsx');
  }

  Future<void> _exportDataGridToPdf() async {
    final PdfDocument document =
    _key.currentState!.exportToPdfDocument(fitAllColumnsInOnePage: true);

    final List<int> bytes = document.saveSync();
    await helper.saveAndLaunchFile(bytes, 'DataGrid.pdf');
    document.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Syncfusion Flutter DataGrid Export',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: 120.0,
                  child: MaterialButton(
                      color: Colors.blue,
                      onPressed: _exportDataGridToExcel,
                      child: const Center(
                          child: Text(
                            'Export to Excel',
                            style: TextStyle(color: Colors.white),
                          ))),
                ),
                const Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                  height: 40.0,
                  width: 150.0,
                  child: MaterialButton(
                      color: Colors.blue,
                      onPressed: _exportDataGridToPdf,
                      child: const Center(
                          child: Text(
                            'Export to PDF',
                            style: TextStyle(color: Colors.white),
                          ))),
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildDataGrid(),
          ),

          Container(
            height: 90,
            child:SfDataPager(
              visibleItemsCount:employeesPerPage,
              pageCount:(employeeListLength/employeesPerPage).ceil().toDouble(),
              delegate:  _employeeDataSource,
              direction: Axis.horizontal,
            ),
          )


        ],
      ),
    );
  }

  Widget _buildDataGrid() {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
          headerColor: const Color(0xff009889),
        headerHoverColor: const Color(0xff8ffdf2),
        rowHoverColor: const Color(0xff59ff66),
          rowHoverTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
          )
      ),
      child: SfDataGrid(
        columnWidthMode: ColumnWidthMode.auto,
        columnResizeMode: ColumnResizeMode.onResize,
        controller: _controller,
        columnSizer: ColumnSizer(),
        key: _key,
        source: _employeeDataSource,
        columns: <GridColumn>[
          GridColumn(
              columnName: 'ID',
              label: Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'ID',
                  ))),
          GridColumn(
              columnName: 'Name',
              label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text('Name'))),
          GridColumn(
              columnName: 'Designation',
              label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'Designation',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'Salary',
              label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text('Salary'))),

          GridColumn(
              columnName: 'Deduction',
              label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text('Deduction'))),

        ],
        isScrollbarAlwaysShown: true,
      ),
    );
  }

  List<Employee> _getEmployeeData() {
    return <Employee>[
      Employee(10001, 'James', 'Project Lead', 20000,123),
      Employee(10002, 'Kathryn', 'Manager', 30000,423),
      Employee(10003, 'Lara', 'Developer', 15000,456),
      Employee(10004, 'Michael', 'Designer', 15000,67),
      Employee(10005, 'Martin', 'Developer', 15000,234),
      Employee(10006, 'Newberry', 'Developer', 15000,758),
      Employee(10007, 'Balnc', 'Developer', 15000,67),
      Employee(10008, 'Perry', 'Developer', 15000,678),
      Employee(10009, 'Gable', 'Developer', 15000,967),
      Employee(1000234, 'Gable', 'Developer', 15000,642),
      Employee(1056709, 'Gable', 'Developer', 15000,0986),
      Employee(10567009, 'Gable', 'Developer', 15000,312),
      Employee(105409, 'Gable', 'Developer', 15000,458),
      Employee(107809, 'Gable', 'Developer', 15000,867),
      Employee(104309, 'Gable', 'Developer', 15000,734),
      Employee(1018509, 'Gable', 'Developer', 15000,756),
      Employee(10010, 'Grimes', 'Developer', 15000,312)
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Employee {
  /// Creates the employee class with required details.
  Employee(this.id, this.name, this.designation, this.salary,this.deduction);

  /// Id of an employee.
  final int id;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
  final int salary;

  final int deduction;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((Employee e) => DataGridRow(cells: <DataGridCell>[
      DataGridCell<int>(columnName: 'ID', value: e.id),
      DataGridCell<String>(columnName: 'Name', value: e.name),
      DataGridCell<String>(
          columnName: 'Designation', value: e.designation),
      DataGridCell<int>(columnName: 'Salary', value: e.salary),
      DataGridCell<int>(columnName: 'Deduction', value: e.salary),
    ]))
        .toList();
  }

  List<DataGridRow> _employeeData = <DataGridRow>[];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        color: Colors.indigo[300],
        cells: row.getCells().map<Widget>((DataGridCell cell) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Text(cell.value.toString(),style:const TextStyle(color: Colors.white) ,),
          );
        }).toList());
  }
}