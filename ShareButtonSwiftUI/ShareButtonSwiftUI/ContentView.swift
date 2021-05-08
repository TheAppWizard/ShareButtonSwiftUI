//
//  ContentView.swift
//  ShareButtonSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 08/05/21.
//  The App Wizard
//  Instagram - theappwizard2408




import SwiftUI


struct ContentView: View {
    var body: some View {
        FinalView()
        
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



























struct FinalView: View {
    
    @State private var shareToggle = false
    
    var body: some View {
       
        ZStack{
        FinalUI()
            
//        Image("share")
//            .resizable()
//            .frame(width: 36, height: 36, alignment: .center)
//            .offset(x: -145, y: 365)
            
            ZStack{
            Button(action: {
            self.shareToggle.toggle()
                           }) {
                
                ZStack{
                    
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 80, height: 80, alignment: .center)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                Image("share")
                    .resizable()
                    .frame(width: 36, height: 36, alignment: .center)
                }
                    
                    
                }
                       
            }.offset(x: -145, y: 365)
            
            if shareToggle{
                ZStack{
                    ButtonView()
                }
           }
       }
   }
}



//







struct FinalUI: View {
    @State private var resizenat = false
    
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            Image("nat")
                .resizable()
//              .frame(width: 50, height: 75, alignment: .center)
                .frame(width: 310, height: 510, alignment: .center)
                .shadow(color: .yellow, radius: 5, x: 0.0, y: 0.0)
                .offset(x: -90, y: -210)
                .opacity(1)
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                    .onAppear() {
                        self.resizenat.toggle()
                }
            
            Image("owlw")
                .frame(width: 400, height: 600, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .shadow(color: .black, radius: 20, x: 0.0, y: 0.0)
                .opacity(1)
            
            Text("White Owl")
                .font(.system(size: 56.0))
                .fontWeight(.regular)
                .foregroundColor(Color.white)
                .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
                .offset(x: 50, y: 180)
            
            Rectangle()
                .frame(width: 200, height: 10, alignment: .center)
                .foregroundColor(.white)
                .opacity(0.4)
                .offset(x: 70, y: 220)
            Rectangle()
                .frame(width: 280, height: 10, alignment: .center)
                .foregroundColor(.white)
                .opacity(0.4)
                .offset(x: 30, y: 240)
           
            Rectangle()
                .frame(width: 280, height: 10, alignment: .center)
                .foregroundColor(.white)
                .opacity(0.4)
                .offset(x: 30, y: 260)

            
            
            
            
            //Share Button
            
            ZStack{
           
                
                
           
            
        // Navigation
            
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                    
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                }.padding(.all)
            
            
            Spacer()
            
                HStack{
                    Spacer()
                    ZStack{
                        
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40, height: 38, alignment: .center)
                        
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 80, height: 80, alignment: .center)
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))

                        
                    }.offset(x: 10, y: 20)
               
                }
            }.padding()
                
                
            
            }.padding(.all)
            // Navigation
            
        }
    }
}



