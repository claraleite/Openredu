//
//  EnvironmentView.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct EnvironmentView: View {
    
    let logEnvironments = EnvironmentTypeModel.logEnvironments()
    
    var body: some View {
        GeometryReader { geometry in
                            
                ZStack {
                    
                    VStack(spacing: geometry.size.height * 0.02) {
                        ForEach(logEnvironments) { item in
                            EnvironmentListView(title: item.title, nextView: EnvironmentDetailView(environmentInfo: item), width: geometry.size.width * 0.85, height: geometry.size.height * 0.07)
                                
                        }
                        
                        Spacer()
                    }
                    
                }
            
        }
        
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
