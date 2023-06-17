//
//  HouseARScreen.swift
//  Kasablanca
//
//  Created by Ameer Hamza on 17/06/2023.
//

import SwiftUI
import RealityKit
import ARKit

struct HouseARScreen: View {
    @Environment(\.presentationMode) var presentationMode
    let modelName: String
    @State private var textSwitch = false
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            ARViewContainer(modelName: modelName)
                .edgesIgnoringSafeArea(.all)
            
            Image(systemName: "xmark")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.gray).opacity(0.5))
                .padding(.horizontal, 25)
                .padding(.vertical, 35)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
            
//            if textSwitch != true{
//                VStack{
//                    Spacer()
//                    HStack{
//                        Spacer()
//                        Text("Keep your camera on a surface to place the object")
//                            .font(.largeTitle)
//                            .
//                            .onAppear{
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                                                    self.textSwitch.toggle()
//                                                }
//                            }
//                        Spacer()
//                    }
//                    Spacer()
//                }
//            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HouseARScreen_Previews: PreviewProvider {
    static var previews: some View {
        HouseARScreen(modelName: "Modern_Home.usdz")
    }
}

struct ARViewContainer: UIViewRepresentable {
    let modelName: String
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Set up AR configuration and session
        let arConfiguration = ARWorldTrackingConfiguration()
        arView.session.run(arConfiguration)
        
        // Enable the default lighting in the scene
        arView.automaticallyConfigureSession = true
        arView.environment.sceneUnderstanding.options = []
        
        // Load the USDZ model
        let modelEntity = try! ModelEntity.loadModel(named: modelName)
        
//        let scalingPivot = Entity()
//        scalingPivot.position.y = modelEntity.visualBounds(relativeTo: nil).center.y
//        scalingPivot.addChild(modelEntity)
//
//        // compensating a robot position
//        modelEntity.position.y -= scalingPivot.position.y
        
        // Create an anchor entity for positioning the model
        let anchorEntity = AnchorEntity(plane: .horizontal)
        anchorEntity.position = SIMD3<Float>(0, 0, -2)
        
        // Add the model entity to the scene
        anchorEntity.addChild(modelEntity)
        arView.scene.addAnchor(anchorEntity)
        
//        let newTransform = Transform(scale: .one * 7)
//        scalingPivot.move(to: newTransform,
//                        relativeTo: scalingPivot.parent,
//                        duration: 5.0)
        
        //        // Position the anchor entity in front of the camera
        //        let cameraAnchor = AnchorEntity(.camera)
        //        cameraAnchor.addChild(anchorEntity)
        //        arView.scene.addAnchor(cameraAnchor)
        
        // Update the anchor entity's position based on the camera transform
        //        let frame = arView.session.currentFrame
        //        if let cameraTransform = frame?.camera.transform {
        //            anchorEntity.transform = cameraTransform
        //        }
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
}
