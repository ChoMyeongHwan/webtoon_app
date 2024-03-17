import 'package:http/http.dart' as http; // namespace 지정

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');

    // Future<Response> : get 함수는 미래에 완료됨
    final response = await http.get(url); // await는 비동기 함수 내에서만 사용 가능함
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
