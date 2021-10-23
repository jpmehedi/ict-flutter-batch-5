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


  
//   for(int i = 0; i < student.length; i++) {
    
//     if(student[i]['age'] is Map) {
//       Map age = student[i]['age'];
//       age.forEach((key, value){
//         if(key != "old") {
//           print(value);
//         }
//       });
//       continue;
//     }
    
//     print(student[i]["age"]);
//   }
  
 
  
  for(int i = 0; i < student.length; i++) {
    
//     print(student[i]["gender"].runtimeType);
    
    if(student[i]["gender"].runtimeType != String) {
      
      List gender = student[i]["gender"];

      for(int j = 0; j < gender.length; j++) {
        print(gender[j]);
      }
      
      continue;
    }
    print(student[i]["gender"]);
  }
  
  
  
  

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




