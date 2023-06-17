//
//  HouseDetailView.swift
//  Kasablanca
//
//  Created by Ameer Hamza on 03/06/2023.
//

import SwiftUI
import SceneKit

struct HouseDetailView: View {
    let house: House
    @State private var showARView: Bool = false
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading){
                
                ZStack(alignment: .topTrailing) {
                    SceneView(scene: SCNScene(named: house.modelName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 1.25)
                    
                    Image(systemName: "square.3.layers.3d")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(.gray).opacity(0.5))
                        .padding()
                        .onTapGesture {
                            self.showARView = true
                        }
                }
                
                Spacer().frame(height: 2)
                
                Text(house.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                
                Text("PKR \(house.price)")
                    .font(.title2)
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
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(house.houseFeature.water ? .green : .red))
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
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(house.houseFeature.gas ? .green : .red))
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
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(house.houseFeature.electricty ? .green : .red))
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
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(house.houseFeature.parking ? .green : .red))
                    }
                }
                .padding(.horizontal)
                
                Text("Details")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                
                Spacer()
                    .frame(height: 10)
                
                Text(house.details)
                    .font(.body)
                    .padding(.horizontal, 10)
                
            }.fullScreenCover(isPresented: $showARView) {
                HouseARScreen(modelName: house.modelName)
            }
        }
        
    }

}

struct HouseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HouseDetailView(house: House.houses[0])
    }
}

