//
//  WebView.swift
//  H4CK3R N3W5
//
//  Created by Kelvin KUCH on 26.11.2022.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
}


