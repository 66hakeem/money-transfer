//
//  TransactionView.swift
//  money-transfer
//
//  Created by yinyang on 14/03/2023.
//

import SwiftUI

struct TransactionView: View {
    var body: some View {
        // header
        VStack(spacing: -30) {
            TransactionHeader()
            LazyVStack {
                ForEach(0..<10, id: \.self) { item in
                   TransactionRow()
                }
            }
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding(.horizontal)
        
    }
}


struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
            .previewLayout(.sizeThatFits)
    }
}
