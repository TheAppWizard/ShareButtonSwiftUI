//
//  ButtonView.swift
//  ShareButtonSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 08/05/21.
//

import SwiftUI

import SwiftUI

struct ButtonView: View {
    
    @State private var fb = false
    @State private var pin = false
    @State private var tweet = false
    @State private var gp = false
    
    @State private var textop = false
    

    
    var body: some View {
        ZStack{
        ZStack{
            Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)
               
        
             }
       
            Text("Share This Post ")
                .font(.largeTitle)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
                .offset(x: -60, y: 180)
                .opacity(textop ? 1 : 0)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatCount(1))
                    .onAppear {
                        textop.toggle()
                        }
            
        
            
          HStack{
            FBButton().offset(x: 0, y: fb ? 260 : 365)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatCount(1))
                    .onAppear {
                        fb.toggle()
                        }
                
            
            Spacer().frame(width: 12, height: 0, alignment: .center)
            
            PButton().offset(x: pin ? 0 : -97 , y: pin ? 260 : 365)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatCount(1))
                    .onAppear {
                        pin.toggle()
                        }

                
            
            Spacer().frame(width: 12, height: 0, alignment: .center)
            TButton().offset(x: tweet ? 0 : -194, y: tweet ? 260 : 365)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatCount(1))
                    .onAppear {
                        tweet.toggle()
                        }
                
            
            Spacer().frame(width: 12, height: 0, alignment: .center)
            GButton().offset(x: gp ? 0 : -290, y: gp ? 260 :365)
            
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatCount(1))
                    .onAppear {
                        gp.toggle()
                        }
            
        }

            
        ZStack{
                
            Circle()
                .foregroundColor(.black)
                .frame(width: 80, height: 80, alignment: .center)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Image(systemName: "xmark")
                    .aspectRatio(contentMode: .fill)
                .font(.largeTitle)
                    .foregroundColor(.white)
                .frame(width: 50, height: 50, alignment: .center)
            }.offset(x: -145, y: 365)
            
        
        
        }
        
        
       
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}


struct FBButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 85, height: 85, alignment: .center)
                .foregroundColor(.blue)
            
            Image("facebook")
                .resizable()
                .frame(width: 75, height: 75, alignment: .center)
                .clipShape(Circle())
        }
    }
}


struct PButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 85, height: 85, alignment: .center)
                .foregroundColor(.red)
            
            Image("pin")
                .resizable()
                .frame(width: 75, height: 75, alignment: .center)
                .clipShape(Circle())
        }
    }
}


struct TButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 85, height: 85, alignment: .center)
                .foregroundColor(Color("twitcolor"))
            
            Image("twitt")
                .resizable()
                .frame(width: 75, height: 75, alignment: .center)
                .clipShape(Circle())
        }
    }
}


struct GButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 85, height: 85, alignment: .center)
                .foregroundColor(Color.red)
            
            Image("gp")
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .clipShape(Circle())
        }
    }
}


