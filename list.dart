main() {
  List<String> names = ["Omar ", "Ali ", "noor"];
  for (int i = 0; i < names.length; i++) {
    print("Doctor name ${i + 1} ${names[i]}");
  }
}

// print(x+1);
// print(x);
// print(x++);
//i+1  != --> i++ this mean we change the value 
//var -->variable we don't know what is it 
//var x=0;
//x=5.5  wrong
//dynamic x =0;
//x=5.5 right
/*

for(var i in names) --> mean string i in names
{
print(i); 
}


list -->["",""]
map--> {key : value}
Map <String,dynamic> data =
{
"d1":["",""]
}

///null safety
///?  ! late
///?-> can be null
name??"error" -->mean if name == null print error
///!-> iam sure that value will be exist
///late-> will take value later , not create the variable in memory until it take a value
///optional parameter (,{double? x})
///optional parameter ({required int num1 ,double? x}) //x is optional only --> to be named
 */