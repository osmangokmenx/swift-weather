//
//  LoadingView.swift
//  weather
//
//  Created by Osman Gökmen on 21.09.2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
      ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .white)).frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
