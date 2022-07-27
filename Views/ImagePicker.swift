//
//  ImagePicker.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-20.
//

import Foundation
import SwiftUI


class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @Binding var image: UIImage?
    @Binding var sheetIsShown: Bool
//    var srcType: UIImagePickerController.SourceType = .camera
    init(image: Binding<UIImage?>, sheetIsShown: Binding<Bool>) {
        _image = image
        _sheetIsShown = sheetIsShown
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
//        'as?' -> the question mark returns a nullable object
        if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            image = uiImage
            sheetIsShown = false
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        sheetIsShown = false
    }
}


// uses UIViewControllerRepresentable to display anything related to the cameraroll/camera --> allows UIImagePickerController to be a part of the UI

struct ImagePicker: UIViewControllerRepresentable { // UIViewControllerRepresentable used as an instance to manage a UIViewController object
    
    typealias UIViewControllerType = UIImagePickerController
    typealias Coordinator = ImagePickerCoordinator
    
    
//    coordinates is going to do the work to provide the image
//    imagepicker responsible for delegating (bunding) tasks to the coordinator
    
    @Binding var image: UIImage?
    @Binding var sheetIsShown: Bool
    var srcType: UIImagePickerController.SourceType = .camera
    
    
//    if you're UIImagePicker is changing
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
    
// helps with different delegate functions provided by the the UIImagePickerController delegate
    func makeCoordinator() -> ImagePicker.Coordinator {
        return ImagePickerCoordinator(image: $image, sheetIsShown: $sheetIsShown)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
    
        let picker = UIImagePickerController()
        picker.sourceType = srcType
        picker.delegate = context.coordinator
        return picker
        
    }
    
}
