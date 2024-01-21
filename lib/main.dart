import 'package:flutter/material.dart';
import 'package:tugas2_riska_pm2/data/datasource/remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas2_riska_pm2/pages/bloc/item_bloc.dart';
import 'package:tugas2_riska_pm2/pages/list_alat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemBloc>(
          create: (_) => ItemBloc(remoteDataSource: RemoteDataSource()),
        ),
      ],
      child: MaterialApp(
        home: const ListAlat(),
      ),
    );
  }
}
