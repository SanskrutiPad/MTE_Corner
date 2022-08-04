//
//  PracticeSignatureView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI
import PencilKit

//Line data structure
struct Line {
    var points: [CGPoint]
    var color : Color
}



struct PracticeSignatureView: View {

    
    @State private var lines: [Line] = []
    @State private var selectedColor = Color.black
    
    var body: some View {
        VStack {
            HStack {
                Text("Choose Color")
                ForEach([Color.black, Color.blue], id: \.self) { c in
                    colorButton(color: c)
                }
                
                clearSigButton()
            }

            //   Draw Canvas -> so it knows how to draw
            Canvas { canvasContext, size in
                for line in lines {
//                    builds a line/creates path from drawing
                    var path = Path()
                    path.addLines(line.points)
                    
                    canvasContext.stroke(path, with: .color(line.color), style : StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                }
            }
            
//          We've added a gesture recognizer so that Canvas will actually provide us a drawing
            .gesture(
                DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({ value in
                let position = value.location
                
                if value.translation == .zero {
                    lines.append(Line(points: [position], color: selectedColor))
                } else {
                    guard let lastIdx = lines.indices.last else {
                        return
                    }
                    
                    lines[lastIdx].points.append(position)
                }
            })
                )
        }
        
    }
    
    @ViewBuilder
//    You typically use ViewBuilder as a parameter attribute for child view-producing closure parameters, allowing those closures to provide multiple child views. For example
    func colorButton(color: Color) -> some View {
        Button {
            selectedColor = color
        } label: {
            Image(systemName: "circle.fill")
                .font(.largeTitle)
                .foregroundColor(color)
                .mask {
                    Image(systemName: "applepencil")
                        .font(.largeTitle)
                }
        }
    }
    
    @ViewBuilder
    func clearSigButton() -> some View {
        Button {
//            sets all lines to empty
            lines = []
        } label: {
            Image(systemName: "pencil.tip.crop.circle.badge.minus")
                .font(.largeTitle)
                .foregroundColor(lightGreyForHome)
                
        }
    }
}




struct PracticeSignatureView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeSignatureView()
    }
}
