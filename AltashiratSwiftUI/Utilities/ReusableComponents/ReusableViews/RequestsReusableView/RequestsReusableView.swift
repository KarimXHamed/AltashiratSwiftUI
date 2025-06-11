//
//  RequestsReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/06/2025.
//
import SwiftUI
struct RequestsReusableView: View {
    
    let model:RequestModel
    
    init(model: RequestModel) {
        self.model = model
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            upperPart
            lowerPart
            ordersSeparator
        }
        .padding(.top, 16)
        
        
    }
    
    var lowerPart: some View {
        
        HStack(spacing: 0) {
            Spacer()
            
            lowerLeftSection
            
            Spacer()
            
            sectionsSeparator
            
            Spacer()
            
            lowerMiddleSection
            
            Spacer()
            
            sectionsSeparator
            
            Spacer()
            
            lowerRightSection
            
            Spacer()
        }
        .frame(height: 73)
        
    }
    
    var sectionsSeparator: some View {
        HStack(spacing: 0){
            
            Rectangle()
                .frame(width: 1, height: 52)
                .foregroundStyle(.notSelectedButton)
            
        }

    }
    
    var ordersSeparator: some View {
        HStack(spacing: 0){
            
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.profileSeparator)
            
        }
    }
    
    var lowerLeftSection: some View {
       
        VStack(spacing: 0) {
            Spacer()
            
            Text("Order date")
                .frame(height: 22)
                .foregroundStyle(.text)
                .font(Fonts.extraBold.getFont(size: 14))
            
            Spacer()
            
            Text("\(model.date)")
                .frame(height: 22)
                .foregroundStyle(.notSelectedButton)
                .font(Fonts.extraBold.getFont(size: 14))
            
            Spacer()
            
        }
        
    }
    
    var lowerMiddleSection: some View {
        
        VStack(spacing: 0) {
            Spacer()

            Text("No. of persons")
                .frame(height: 22)
                .foregroundStyle(.text)
                .font(Fonts.extraBold.getFont(size: 14))
            
            Spacer()

            Text("\( model.noOfPersons )")
                .frame(height: 22)
                .foregroundStyle(.text)
                .font(Fonts.extraBold.getFont(size: 14))
            
            Spacer()
            
        }
    }
    
    var lowerRightSection: some View {
        VStack(spacing: 0) {
            Spacer()

            Text("No. of childs")
                .frame(height: 22)
                .foregroundStyle(.text)
                .font(Fonts.extraBold.getFont(size: 14))
            
            Spacer()
            
            Text("\( model.noOfChilds )")
                .frame(height: 22)
                .foregroundStyle(.text)
                .font(Fonts.extraBold.getFont(size: 14))
            
            Spacer()
            
        }
    }
    
    var upperPart: some View {
        HStack(spacing: 0) {
            LinearGradient(colors:[.first,.second,.third],
                           startPoint: .top,
                           endPoint: .bottom)
            .frame(width: 3)
            .padding(.trailing, 13)
            
            orderId
            
            Spacer()
            
            model.status.text
                .padding(.trailing, 16)
            
            Button {} label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 26)
                        .foregroundStyle(.white)

                    
                    Image(systemName: "eye.fill")
                        .renderingMode(.template)
                        .foregroundStyle(.first)
                }
                .padding(.trailing, 16)
                    
            }
         
            
        }
        .frame(height: 33)
        .background(Color.profileSeparator)
    }
    
    var orderId: some View {
        
        Group {
            Text("Order number")
                .padding(.trailing, 8)
            Text(verbatim: "\(model.orderNumber)")
            
        }
        .foregroundStyle(.text)
        .font(Fonts.extraBold.getFont(size: 14))
        
    }

}
