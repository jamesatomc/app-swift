//
//  OptionalFormPage.swift
//  appp
//
//  Created by MacBookPro-07 on 28/2/2566 BE.
//

import SwiftUI

struct OptionalFormPage: View {
    let options = ["ชาย", "หญิง"]
    @State private var selectedOption = 0
    
    let options1 = ["เกตรกรม, ผู้ใช้แรงงาน, พนักงานโรงงาน", "เจ้าหน้าที่สำนักงาน, พนักงานออฟฟิส", "แพทย์, พยาบาล, บุคลากรทางการแพทย์", "ครู, อาจารย์, บุคลากรทางการศึกษา", "ทหาร, ตำรวจ, เจ้าหน้าที่รักษาคาวมปลอดภัย", "พ่อบ้าน, แม่บ้าน, พนักงานทำความสะอาด" , "อื่นๆ", "ไม่มี/เกษียณ"]
    @State private var selectedOption1 = 0
    
    let options2 = ["เก๊่าท์", "ความดันโลหิต่ำ", "ไขมันในเลือดสูง", "เบาหวาน", "กระดูกพรุน", "อื่นๆ"]
    @State private var selectedOption2 = 0
    
    let options3 = ["Paracetamol (พาราเซตามอล)", "Diazepam (ไดอะซีแพม)", "Orphenadrine (ออร์เฟเนดรีน)", "Baclofen (บาโคลเฟน)", "Tizanidine (ทิซานิดีน)", "อื่นๆ"]
    @State private var selectedOption3 = 0
    
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var texta: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("ชื่อ-นามสกุล")) {
                    TextField("Name Surname", text: $name)
                }
                Section(header: Text("เพศ")) {
                    VStack {
                        Picker(selection: $selectedOption, label: Text("เพศ")) {
                            ForEach(0..<options.count) { index in
                                Text(options[index])
                                
                            }
                        }
                    }
                }
                
                Section(header: Text("โทรศัพท์")) {
                    TextField("Phone Number", text: $phone)
                }
                
                Section(header: Text("อาชีพ")) {
                    VStack {
                        Picker(selection: $selectedOption1, label: Text("อาชีพ")) {
                            ForEach(0..<options1.count) { index in
                                Text(options1[index])
                                
                            }
                        }
                    }
                }
                
                Section(header: Text("โรงประจำตัว")) {
                    VStack {
                        Picker(selection: $selectedOption2, label: Text("โรงประจำตัว")) {
                            ForEach(0..<options2.count) { index in
                                Text(options2[index])
                                
                            }
                        }
                    }
                }
                
                Section(header: Text("ประวัติการใช้ยา")) {
                    VStack {
                        Picker(selection: $selectedOption3, label: Text("ประวัติการใช้ยา")) {
                            ForEach(0..<options3.count) { index in
                                Text(options3[index])
                                
                            }
                        }
                    }
                }
                
                Section(header: Text("หมายเหตุ")) {
                    TextField("", text: $texta)
                }
            
                
            }
            .navigationBarTitle("ข้อมูลทั่วไป")
           
        }
    }



    
}

struct OptionalFormPage_Previews: PreviewProvider {
    static var previews: some View {
        OptionalFormPage()
    }
}
