//
//  TitleRow.swift
//  ChatApp
//
//  Created by peter wi on 3/21/22.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
    var name = "Hohn Conor"
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                 ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.secondary)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(.brown)
    }
}
