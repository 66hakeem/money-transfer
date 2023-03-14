//
//  TransactionHeader.swift
//  money-transfer
//
//  Created by yinyang on 14/03/2023.
//

import SwiftUI

struct TransactionHeader: View {
    var body: some View {
        HStack {
            Text("Send to money")
                .font(.headline)
            Spacer()
            Image(systemName: "plus.circle.fill")
                .resizable()
                .foregroundColor(Color(#colorLiteral(red: 0.3088428378, green: 0.3858735561, blue: 0.7556285262, alpha: 1)))
                .frame(width: 30, height: 30)
            Text("Add recipient")
                .font(.headline)
        }
        .padding(20)
        .padding(.bottom, 40)
        .foregroundColor(.white)
        .background(Color(#colorLiteral(red: 0.1017551646, green: 0.1053237244, blue: 0.1343818903, alpha: 1)))
        .cornerRadius(20)
        .offset(x: 0, y:10)
    }
}

struct TransactionHeader_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHeader()
    }
}
