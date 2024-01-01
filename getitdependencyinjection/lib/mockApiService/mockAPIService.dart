class ApiService{
  Future<List<String>> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return ['data1', 'data2', 'data3'];
  }
}