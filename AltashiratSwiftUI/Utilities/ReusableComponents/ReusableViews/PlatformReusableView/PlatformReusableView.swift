//
//  PlatformReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/06/2025.
//
import SwiftUI
struct PlatformReusableView: View {
    
    var firstTitle:String
    var secondTitle:String
    var blueButtonTitle:String
    var clearButtonTitle:String
    var backgroundImage: Image
    
    init(firstTitle: String,
         secondTitle: String,
         blueButtonTitle: String,
         clearButtonTitle: String,
         backgroundImage: Image) {
        self.firstTitle = firstTitle
        self.secondTitle = secondTitle
        self.blueButtonTitle = blueButtonTitle
        self.clearButtonTitle = clearButtonTitle
        self.backgroundImage = backgroundImage
    }
    
    var body: some View {
        VStack(spacing:0) {
            titleStack
            ZStack {
                backgroundImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                HStack {
                    Button {} label: {
                        Text(blueButtonTitle)
                            .frame(height: 41)
                            .padding(.leading, 9.5)
                            .padding(.trailing, 12.5)
                            .background(Color.second)
                            .foregroundStyle(.white)
                            .font(Fonts.extraBold.getFont(size: 18))
                            .clipShape(RoundedRectangle(cornerRadius: 20.5))
                            
                        
                    }
                    Button {} label: {
                        Text(clearButtonTitle)
                    }
                }
                .frame(height: 26)
            }
            .frame(height: 92)
        }
    }
    
    var titleStack: some View {
        HStack(spacing: 0) {
            Text(firstTitle)
                .font(Fonts.extraBold.getFont(size: 14))
                .foregroundStyle(.white)
                .padding(.leading,9)
                .padding(.trailing,2)
                .background(LinearGradient(colors:[.first,.second,.third],startPoint: .leading, endPoint: .trailing))
            
            Text(secondTitle)
                .font(Fonts.extraBold.getFont(size: 14))
                .foregroundStyle(.text)
                .padding(.leading,2)
            
        }
        .frame(height: 26)
        .clipShape(RoundedRectangle(cornerRadius: 23.5))
        .padding(.bottom, 12)
    }
}
