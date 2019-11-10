class Utils {
  static String baseUrl = "https://reqres.in/api/";

  static String getUrlApi(String path) {
    return {
      'user' : baseUrl+'users/',
      'users' : baseUrl+'users?page=',
      }[path];
  }
}