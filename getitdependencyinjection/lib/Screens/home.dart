import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../mockApiService/mockAPIService.dart';
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final getIt = GetIt.instance;
  @override
  Widget build(BuildContext context) {
    final apiService = getIt.get<ApiService>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder<List<String>>(
        future: apiService.fetchData(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Text(snapshot.data![index]);
              }
            );
          }
          else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }
}
