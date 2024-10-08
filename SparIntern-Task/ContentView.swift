//
//  ContentView.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 09.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


/*
 
 struct AddView_Previews: PreviewProvider {
     static var previews: some View {
         NavigationStack {
             AddView()
         }
         .environmentObject(ListViewModel())
     }
 }

 
 */
