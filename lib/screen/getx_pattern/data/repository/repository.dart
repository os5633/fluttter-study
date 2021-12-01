import 'package:flutter_application_1/screen/getx_pattern/data/provider/api.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({
    required this.apiClient,
  });

  getAll() {
    return apiClient.getAll();
  }
}
