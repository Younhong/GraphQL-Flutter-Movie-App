import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlService {

  static final HttpLink httpLink = HttpLink(uri: "http://your ip:4000/");
  final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
    GraphQLClient(link: httpLink, cache: OptimisticCache(
        dataIdFromObject: typenameDataIdFromObject))
  );
}

final graphqlService = GraphqlService();