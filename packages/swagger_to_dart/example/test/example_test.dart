import 'package:dio/dio.dart';
import 'package:example/src/gen/clients/api_client.dart';
import 'package:example/src/gen/models/models.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockDio extends Mock implements Dio {}

class MockResponse<T> extends Mock implements Response<T> {}

void main() {
  group('ApiClient tests', () {
    late MockDio mockDio;
    late ApiClient apiClient;

    setUp(() {
      mockDio = MockDio();
      apiClient = ApiClient(mockDio);

      // Configure base URL
      when(
        () => mockDio.options,
      ).thenReturn(BaseOptions(baseUrl: 'http://0.0.0.0:8004'));
    });

    test('pingPing returns pong', () async {
      // Arrange
      final mockResponse = MockResponse<String>();
      when(() => mockResponse.data).thenReturn('pong');

      when(
        () => mockDio.get<String>(any(), options: any(named: 'options')),
      ).thenAnswer((_) async => mockResponse);

      // Act
      final response = await apiClient.basic.basicBasicBoolean(
        queries: BasicBasicBooleanQueries(flag: true),
      );

      // Assert
      expect(response.data, equals('pong'));
      verify(
        () => mockDio.get<String>('/ping', options: any(named: 'options')),
      ).called(1);
    });
  });
}
