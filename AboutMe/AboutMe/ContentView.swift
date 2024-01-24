//
//  ContentView.swift
//  AboutMe
//
//  Created by Joud Bin Tuwaim on 24/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOption = 0
    let options = ["About Me","Education","Projects"]
    let Aboutme = "Graduate of King Saud University, Computer Information Sciences College with a major in IS.\nDuring my time at university I got the opportunity to have an internship at Apple Developer Academy, where we worked on different projects and learned the fundamentals of building applications. \nCurrently I am seeking opportunities where I can develop my skills and expand my knowledge."
    
    
    var body: some View {
        
        ZStack{
            Rectangle().foregroundColor(Color("myGray")).ignoresSafeArea()
          
            VStack {
                Rectangle().frame(height: 200).foregroundColor(Color("myBlue")).ignoresSafeArea()
                Spacer()
            }
           
       
                VStack{
                    ZStack{
                        
                        Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).padding(.top, 40.0)
                        
                        Image("myImage").resizable().scaledToFit().frame(width: 150,height:150).padding(.top, 40.0)
                        
                    }
                    Text("Danya Bin Tuwaim").bold().font(.title2)
                    Text("Fresh Graduate")
                    Picker("Select an option",selection: $selectedOption){ ForEach(0..<options.count){ index in
                        Text(options[index])
                        
                    }
                        
                    }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal)
                    ScrollView{
                    if selectedOption == 0{
                        AboutMe()
                        
                        
                    }else if selectedOption == 1{
                        Education()
                        
                    }else if selectedOption == 2{
                        Projects()
                        
                    }
                    
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                }.padding()
            }
            
        }
    }
}

#Preview {
    ContentView()
}




struct AboutMe: View {
 
    let aboutmeText = "Graduate of King Saud University, Computer Information Sciences College with a major in IS.\n\nDuring my time at university I got the opportunity to have an internship at Apple Developer Academy, where we worked on different projects and learned the fundamentals of building applications. \n\nCurrently I am seeking opportunities where I can develop my skills and expand my knowledge."
    
    
    var body: some View {
        ZStack{
            
            Rectangle().frame(height: 400).cornerRadius(10).foregroundColor(.white)
            VStack{
              
                  
                
                Text(aboutmeText).multilineTextAlignment(.center).foregroundStyle(Color("myDarkBlue")).padding(.top)
                Spacer()
                
            }.padding()
            
            
        }
        
        
        
    }
}


struct Education: View {
 
   
    
    
    var body: some View {
        ZStack{
            
            Rectangle().frame(height: 400).cornerRadius(10).foregroundColor(.white)
            VStack(alignment:.leading){
                HStack{
                    Text("King Saud University").foregroundStyle(Color("myDarkBlue")).bold()
                    Spacer()
                    Text("June 2023").italic()
                }
                Text("Bachelor of Science in CIS")
              
                Text("Gpa: 4.7/5")
                    Spacer()
                HStack{
                    Text("Apple Developer Academy").foregroundStyle(Color("myDarkBlue")).bold()
                    Spacer()
                    Text("July 2022").italic()
                }
                Text("9-month program")
                Spacer()
                
                HStack{
                    Text("Apple Developer Academy").foregroundStyle(Color("myDarkBlue")).bold()
                    Spacer()
                    Text("March 2022").italic()
                }
                Text("6-month program")
                Divider()
            
                Text("Certificates").bold()
                Text("IELTS Score: 7")
                Spacer()
                
            }.padding()
            
            
        }
        
        
        
    }
}

struct Projects: View {
    
    
    
    
    var body: some View {
        ZStack{
            
            Rectangle().frame(height: 800).cornerRadius(10).foregroundColor(.white)
            
            VStack(alignment:.leading){
               
                HStack{
                    Text("Workaday").font(.title2).bold().foregroundStyle(Color("navy"))
                    Spacer()
                    ZStack{
                       
                        Rectangle().frame(width: 55, height: 40).foregroundColor(.white).cornerRadius(10)
                        
                        Image("workaday").resizable().scaledToFit().frame(width: 50,height:50)
                        
                    }
                  
                    
                }
                
                Text("App Statement:").bold()
                Text("An app designed for individuals and teams to enable them to manage their tasks and projects simply and efficiently.\nPublished the app on the app store.")
                
                
            Divider()
                
                HStack{
                    Text("Vein").font(.title2).bold().foregroundStyle(.pink)
                    Spacer()
                    ZStack{
                       
                        Rectangle().frame(width: 55, height: 40).foregroundColor(Color("veinColor")).cornerRadius(10)
                        
                        Image("vein").resizable().scaledToFit().frame(width: 50,height:50)
                        
                    }
                  
                    
                }
                Text("App Statement:").bold()
                Text("An app that helps donors donate by creating a platform that acts as a conduit between donors and recipients, allowing blood to reach them as soon as possible.")
                Divider()
                HStack{
                    Text("Urent").font(.title2).bold().foregroundStyle(.blue)
                    Spacer()
                    ZStack{
                        
                        Rectangle().frame(width: 55, height: 40).foregroundColor(.white).cornerRadius(10)
                        
                        Image("urent").resizable().scaledToFit().frame(width: 80,height:50)
                        
                    }
                    
                    
                }
                Text("App Statement:").bold()
                Text("An app that helps individuals who wanted to increase their income and control their budget by showing their unused products for rent and rent the ones they need.")
                Divider()
                HStack{
                    Text("Waves").font(.title2).bold().foregroundStyle(.orange)
                    Spacer()
                    ZStack{
                       
                        Rectangle().frame(width: 55, height: 40).foregroundColor(.white).cornerRadius(10)
                        
                        Image("waves").resizable().scaledToFit().frame(width: 50,height:50)
                        
                    }
                  
                    
                }
                Text("App Statement:").bold()
                Text("An app that provides a way for talented people who want to find opportunities by sharing their work and talent.")
               
                
              
               
                
            }.padding()
            
            
        }
    }
        
        
}

