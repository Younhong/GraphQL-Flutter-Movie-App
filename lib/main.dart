import 'package:flutter/material.dart';
import 'package:flutter_graphql_movie/Services/graphql_service.dart';
import 'package:flutter_graphql_movie/UI/home.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie App With GraphQL Server',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GraphQLProvider(
        client: graphqlService.client,
        child: HomePage(),
      ),
    );
  }
}
