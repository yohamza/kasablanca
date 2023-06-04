//
//  ContentView.swift
//  Kasablanca
//
//  Created by Ameer Hamza on 03/06/2023.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var houses = House.houses
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Trending 🔥")
                .font(.custom("Helvetica Neue", size: 30))
                .fontWeight(.bold)
                .padding()
                
                List(houses, id: \.id) { house in
                    houseListItem(house)
                        .overlay{
                            NavigationLink(destination: HouseDetailView(house: house), label: {EmptyView()}).opacity(0)
                        }
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                }
                .listStyle(.inset)
                
            }
        }
    }
    
    @ViewBuilder
    func houseListItem(_ house: House)-> some View {
        
        HStack{
            Image(house.displayImage)
                .resizable()
                .cornerRadius(12)
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading) {
                Text(house.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("PKR \(house.price)")
                    .font(.title3)
                Spacer()
                    .frame(height: 10)
                Image(systemName: "arrow.forward.circle.fill")
                    .foregroundColor(.green)
            }
            
            Spacer()
        }
        .padding()
        
    }
}

struct HomeView: View {
    
    @State var index = 1
    var houses = House.houses
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading){
                
                SceneView(scene: SCNScene(named: houses[index].modelName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                
                Text(houses[index].name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                
                Text(houses[index].price)
                    .font(.title)
                    .padding(.horizontal, 10)
                    
                
                HStack{
                    VStack{
                        Image(systemName: "spigot.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)
                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background{
                        RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(lineWidth: 0.1)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(houses[index].houseFeature.water ? .green : .red))
                    }
                    
                    Spacer(minLength: 0)
                    
                    VStack{
                        Image(systemName: "flame")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)

                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background{
                        RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(lineWidth: 0.1)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(houses[index].houseFeature.gas ? .green : .red))
                    }
                    
                    Spacer(minLength: 0)
                    
                    VStack{
                        Image(systemName: "bolt.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)

                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background{
                        RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(lineWidth: 0.1)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(houses[index].houseFeature.electricty ? .green : .red))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Image(systemName: "parkingsign.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)

                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background{
                        RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(lineWidth: 0.1)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(houses[index].houseFeature.parking ? .green : .red))
                    }
                }
                .padding(10)
                
                Text("Details")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                
                Spacer()
                    .frame(height: 10)
                
                Text(houses[index].details)
                    .font(.body)
                    .padding(.horizontal, 10)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
