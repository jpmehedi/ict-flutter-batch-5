void main() {
  
  //Fixed length list
  
//   List country = List.filled(5, 0, growable: true);
  
//   country[0] = "Bangladesh";
//   country[1] = "India";
//   country[2] = "Nepal";
//   country[3] = "Japan";
//   country[4] = "Noakhali";
//   country[5] = "USA";
//   country.add("USA");
  
//   country[5] = "UK";
  
  
  
  //Growable lenght list
  
//   List country = ["as", "assd", "asd"];
  
  List<String> country = <String>[];
  
  country.add("Bangladesh");
  country.add("India");
  country.add("Nepal");
  country.add("Japan");
  
  country.addAll(["Bangladesh", "India", "Japan", "USA"]);
  
  
//   country.remove("Bangladesh");
  
//   country.removeAt(4);
  
//   country.removeRange(3,6);
  
//Update
  
  country.replaceRange(4,6,  ["Sri-Lanka", "Germany"]);
  
  
  country.insert(3, "Butan");
  
  country.insertAll(4, ["UK","NetherLand"]);
  
  print(country.length);
  print(country.first);
  print(country.last);
  print(country.reversed);
  
  print(country.isNotEmpty);
  
  country.sort();
  
  print(country.reversed);
  

  
  
  print(country);
  
  
}


