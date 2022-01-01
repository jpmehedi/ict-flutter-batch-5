import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_me/screens/home.dart';
import 'package:test_me/utils/app_color.dart';
import 'package:test_me/widgets/custom_back_button.dart';
import 'package:test_me/widgets/custom_button.dart';
import 'package:test_me/widgets/custom_textfield.dart';
enum Gender { Male, Female }  
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  Gender? _gender = Gender.Male; 

  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _monbileEditingController = TextEditingController();
  bool isLoading = false;

 Future signUp()async{
   setState(() {
     isLoading = true;
   });
   try{
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailEditingController.text,
        password: _passwordEditingController.text
    );
    if(userCredential.user != null){
      uploadProfileImage();
      print("imageUrl: $imageUrl");
      if(imageUrl != null){
       createUser();
        Route route = MaterialPageRoute(builder: (ctx)=> HomeScreen());
        Navigator.push(context, route);
      }
    }
    
   }catch(err){
     print("error: $err");
   }
   
   setState(() {
     isLoading = false;
   });

  }

  var imagePath;
  var imageUrl;
  Future pickedImageFromCamera()async{
     final ImagePicker _picker = ImagePicker();
     final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if(image != null){
      setState(() {
        imagePath = File(image.path);
      });
    }

  }

  Future uploadProfileImage() async {
      String image = imagePath.toString();
      var _image = image.split("/")[6];

    Reference reference = FirebaseStorage.instance.ref().child('profileImage/${_image}');
    UploadTask uploadTask = reference.putFile(imagePath);
    
    TaskSnapshot snapshot = await uploadTask;
    var _imageUrl;
    _imageUrl = await snapshot.ref.getDownloadURL();
    if(_imageUrl != null){
      setState(() {
       imageUrl = _imageUrl;
      });
    }
  }



  Future createUser()async{
      CollectionReference users = await FirebaseFirestore.instance.collection('users');
      try{
        return users.add({
          'name': _nameEditingController.text,
          'email': _emailEditingController.text,
          'mobile': _monbileEditingController.text,
          'gender': _gender!.index.toString(),
          'image': imageUrl.toString(),
        })
        .then((value) => print("User Added"));
      }catch(err){
        print(err);
      }

  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          leadingWidth: 100,
          leading: CustomBackButton(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.w400,
                    color: AppColor.secondaryColor
                  ),
                ),
                Center(
                  child: Stack(
                    children: [
                     imagePath != null ? CircleAvatar(
                        radius: 36,
                        backgroundImage: FileImage(imagePath),
                      ) : CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage("assets/image/profile.jpg"),
                      ),
                      Transform.translate(
                        offset: Offset(
                          -20, 45
                        ),
                        child: ElevatedButton(
                           onPressed: () {
                             pickedImageFromCamera();
                           },
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), 
                              primary: AppColor.secondaryColor
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 102,),
                CustomTextField(
                  controller: _nameEditingController,
                  hintText: "Name",
                ),
                SizedBox(height: 12,),
                CustomTextField(
                  controller: _emailEditingController,
                  hintText: "Email",
                ),
               SizedBox(height: 12,),
                CustomTextField(
                  controller: _passwordEditingController,
                  obscureText: true,
                  hintText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                ),
                SizedBox(height: 12,),
                CustomTextField(
                  controller: _monbileEditingController,
                  hintText: "Enter Mobile Number",
                ),
               SizedBox(height: 14,),
                 Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 19, 
                    fontWeight: FontWeight.w400,
                    color: AppColor.secondaryColor
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 19, 
                            fontWeight: FontWeight.w400,
                            color: AppColor.secondaryColor
                          ),
                        ),
                        Radio(  
                          value: Gender.Male,  
                          groupValue: _gender,  
                          onChanged: (Gender? value) {  
                            setState(() {  
                              _gender = value;  
                            });  
                          },  
                        ),
                      ],
                    ), 
                    SizedBox(width: 43,),
                    Row(
                      children: [
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 19, 
                            fontWeight: FontWeight.w400,
                            color: AppColor.secondaryColor
                          ),
                        ),
                        Radio(  
                          value: Gender.Female,  
                          groupValue: _gender,  
                          onChanged: (Gender? value) {  
                            setState(() {  
                              _gender = value;  
                            });  
                          },  
                        ),
                      ],
                    ),  
                  ],
                ),
                SizedBox(height: 32,),
                isLoading ? CircularProgressIndicator() : CustomButton(
                  onTap: (){
                    signUp();
                  },
                  color: AppColor.secondaryColor,
                  levelColor: AppColor.primaryColor,
                  buttonLevel: "Sign up",
                ),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor
                      ),
                    ),
                    TextButton(
                      onPressed: (){}, 
                      child:  Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.accentColor
                      ),
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}