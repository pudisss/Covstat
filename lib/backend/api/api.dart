import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "../data/data.dart";
import "../../pages/homepage.dart";


// This file will includes all of the api calls 

// World static
Future worldstatic() async {
  var uri = Uri.parse("https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/npm-covid-data/world",);
  var response = await http.get(uri, headers: {
    'X-RapidAPI-Key': 'ea53a94d9emsh6d22b5b6656a0bdp124964jsn4c493cc8e191',
    'X-RapidAPI-Host': 'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
  });

  var jsondata = jsonDecode(response.body);

  // Loop over the data and then add to the variable 
  for (var i in jsondata) {
   totalcase = i["TotalCases"];
   recovered = i["TotalRecovered"];
   activecase = i["ActiveCases"];
   totaldeath = i["TotalDeaths"];
  }

  
  return jsondata;


}


Future top5countries() async {
  var uri = Uri.parse("https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/npm-covid-data/");
  var response = await http.get(uri, headers: {
    'X-RapidAPI-Key': 'ea53a94d9emsh6d22b5b6656a0bdp124964jsn4c493cc8e191',
    'X-RapidAPI-Host': 'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
  });

  var jsondata = jsonDecode(response.body);

  
  // Getting the top 5 countries that have the most covid cases
  for (var i=0; i<jsondata.length; ++i) {
    if (jsondata[i]["rank"] == 0) {
      continue;
    } else if (jsondata[i]["rank"] < 6) {
      if (jsondata[i]["Country"] == "USA") {
        notcountryname.add("United States");
        notcountrycases.add(jsondata[i]["TotalCases"]);

      } else {
        notcountryname.add(jsondata[i]["Country"]);
        notcountrycases.add(jsondata[i]["TotalCases"]);
      }
      
      
    }
  }
  
 
  
  
  
}