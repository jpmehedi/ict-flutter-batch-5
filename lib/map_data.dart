void main() {
  
  //List item = [];
  
//   Map student = {
//     //key : Value
//     "id": 01,
//     "name": "Mehedi",
//     "age": 25,
//     "gender": "Male",
//   };
  
  
  
List<Map<String, dynamic>> student = <Map<String, dynamic>>[
 
  {
    "id": 01,
    "name": "Mehedi",
    "age": 25,
    "gender": "Male",
  },

  { 
    "id": 02,
    "name": "Hasan",
    "age": 85,
    "gender": "Male",
  },

  {
    "id": 03,
    "name": "XYZ",
    "age": {
      "child": 10,
      "adult": 20,
      "old": 60
    },
    "gender": [
      "Male",
      "Female"
    ],
  }

];

print(student[2]["age"]["old"]);
  
  
//   print(student);
//   print(student.keys);
//   print(student.values);
  
//   //Add data 
//   student["phone"] = "0146222255";
  
//   student.addAll({"asd": "assfas", "asdnas": "assdna"});
  
//   //Remove Data 
//   student.remove("asd");
  
  
//   //Update Data
//   student["asdnas"] = "Hasan";
//   student.update("phone", (value)=> "01462222552242");
  
//   student.updateAll((key, value)=> ["assd", "452200","assd"]);
 
  
//   print(student.isEmpty);
  
//   student.clear();
  
//   print(student.isNotEmpty);
    
//   print(student);
  
  
  
  
  
  
  
  
  
}




