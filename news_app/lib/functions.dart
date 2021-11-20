
  import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
class Functions{

  static String getDateTime(String publishedDateTime) {
    DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").parse(publishedDateTime);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('MM/dd/yyyy hh:mm a');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  
  static Future launchUrl(url)async{
    if(await canLaunch(url)){
      return launch(url);
    }else{
      throw "Could not launch $url";
    }
  }

  static String getAuthor(allNewsData){
    print("authorsss: ${allNewsData["author"]}");
    if(allNewsData["author"] != null) {
      return allNewsData["author"];
    }else {
      return allNewsData["source"]["name"];
    }
  }

  
  static String getImage(getImage) {
    if(getImage != null) {
      return getImage;
    }else{
      return "Image not found";
    }
  }

  
}
