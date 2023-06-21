//
//  RideRequestView.swift
//  UberClone
//
//  Created by Tamim Khan on 21/6/23.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        VStack{
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8, height: 8)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 32)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 8, height: 8)
                    
                    }
                
                VStack(alignment: .leading, spacing: 24){
                    HStack{
                        Text("Current Location")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("02:55 PM")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                    }
                    .padding(.bottom, 10)
                    
                    HStack{
                        Text("Coffee Lovers")
                            .font(.system(size: 16, weight: .semibold))
                            
                        
                        Spacer()
                        
                        Text("03:11 PM")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.leading, 8)
                
            }
            .padding()
            
            Divider()
            
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ScrollView(.horizontal){
                HStack(spacing: 12){
                    ForEach(0..<3, id: \.self){ _ in
                        VStack(alignment: .leading){
                            Image("ubercar")
                                .resizable()
                                .scaledToFit()
                            
                            VStack{
                                Text("UberX")
                                    .font(.system(size: 14, weight: .semibold))
                                
                                Text("$22.00")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding(8)
                            
                        }
                        .frame(width: 112, height: 140)
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(10)
                        
                        
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
