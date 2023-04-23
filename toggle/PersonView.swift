//
//  PersonView.swift
//  toggle
//
//  Created by 李 on 2023/04/23.
//

import SwiftUI

struct PersonView: View {
    @EnvironmentObject var model:Model
    var person:Person
    var body: some View {
        VStack(alignment: .leading){
            //if model is true
            if model.showName{
                Text("Name:\(person.name)")
            }
            if model.showAddress{
                Text("Address:\(person.address)")
            }
            if model.showCompany{
                Text("Company:\(person.company)")
                if model.showYears{
                    Text("Years of Experience:\(person.yearsOfExperience)")
                }
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(name:"Mama Mia",
                 address: "123 Candy Lane",
                company: "CodeWithChris",
            yearsOfExperience: 99
                                 )).environmentObject(Model())
    }
}
