//
//  NoItemsView.swift
//  TodoList
//
//  Created by Akhil on 16/10/23.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    let SecondaryAccentColor = Color("SecondaryAccentColor")
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items!")
                    .font(.title )
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click on add button and add bunch of items to your todo list!")
                    .padding(.bottom, 20)
                NavigationLink(
                    destination: AddView(),
                    label: {Text("Add Something 🥳")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(animate ? SecondaryAccentColor : Color.accentColor)
                            .cornerRadius(10)
                            
                        
                    })
                .padding(.horizontal, animate ? 30:55)
                .shadow(
                    color: animate ? SecondaryAccentColor.opacity(0.7) :
                        Color.accentColor.opacity(0.7),
                    radius: animate ?  30:10,
                    x: 0,
                    y:  animate ? 50:30
                )
                .scaleEffect(animate ? 1.1:1.0)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
            }
                
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ) {
                self.animate.toggle()
            }
        }
    }

}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("")
        }
    }
}
