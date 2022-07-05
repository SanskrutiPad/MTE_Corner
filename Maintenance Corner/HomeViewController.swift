//
//  HomeViewController.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-12.
//

import UIKit
import PDFKit

class HomeViewController: UIViewController {
//      Views
    let pdfView = PDFView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pdfView)
        
        
        // Document
        guard let url = Bundle.main.url(forResource: "7-pdf-en (1)", withExtension: "pdf") else {
            return
        }
        guard let document = PDFDocument(url: url) else {
            return
        }
        
                pdfView.document = document
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdfView.frame = view.bounds
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
