//
//  PracticeSignatureView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI
import PencilKit


struct PracticeSignatureView: View {
    let canvasView = PencilKitRepresentable()
        let imgRect = CGRect(x: 0, y: 0, width: 400.0, height: 100.0)
    
    var body: some View {
        VStack {
//                  Text ("Sign here:")
//                  canvasView.frame(height: 100.0)
//                      .border(Color.gray, width: 5)
//                  Button(action: {
//                      self.saveSignature()
//                  }) {
//                      Text("Save Signature")
//                  }
              }
    }
//    func saveSignature() {
//        let image = canvasView.canvas.drawing.image(from: imgRect, scale: 1.0)
//
//
//    }
}

struct PencilKitRepresentable : UIViewRepresentable {
    let canvas = PKCanvasView(frame: .init(x: 0, y: 0, width: 400, height: 80))
    func makeUIView(context: Context) -> PKCanvasView {
        return canvas
    }
    func updateUIView(_ uiView: PKCanvasView, context: Context) { }
}




struct PracticeSignatureView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeSignatureView()
    }
}
