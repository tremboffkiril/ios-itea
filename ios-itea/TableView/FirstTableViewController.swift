//
//  FirstTableViewController.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/2/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class FirstTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, FirstTableViewCellProtocol {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var nameArray: [String] = ["Olga", "Ivan", "Aleksey", "Michael"]
    var surnameArrya: [String] = ["Kushnira", "Grozniy", "Durnev", "Kors"]
    
    var imageRestArray: [String] = ["rest1", "rest2", "rest3", "rest4"]
    
    var studentsArray: [Student] = []
    var facultyArray: [Faculty] = []
    var companyArray: [CompanyModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        //self.navigationController?.navigationBar.isHidden = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        studentsArray = putStudents()
        facultyArray = putFaculty()
        
        companyArray = CompanyManager().setData()
        for company in companyArray {
            print("Company Name = \(company.name)")
            print("Company Location = \(company.location ?? "-")")
            print("Company Phone = \(company.phoneNumber ?? "-")")
            print("Company Imahe = \(company.imageName ?? "-")")
        }
        
        tableView.estimatedRowHeight = 78
        tableView.reloadData()
    }

    
    @IBAction func didTapBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func putStudents() -> [Student] {
        let student1 = Student(name: "Olga")
        let student2 = Student(name: "Ivan")
        let student3 = Student(name: "Aleksey")
        let student4 = Student(name: "Michael")
        
        student1.surname = "Kushnira"
        student2.surname = "Grozniy"
        student3.surname = "Durnev"
        student4.surname = "Kors"
        
        student1.avatarImage = "first"
        student2.avatarImage = "second"
        student3.avatarImage = "third"
        student4.avatarImage = "fourth"
        
        return [student1, student2, student3, student4]
    }
    
    func putFaculty() -> [Faculty] {
        let faculty1 = Faculty(name: "Economic")
        let faculty2 = Faculty(name: "Physic Mathematic")
        
        faculty1.avatarImage = "f1"
        faculty2.avatarImage = "f2"
        
        return [faculty1, faculty2]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return (indexPath.section == 3 ? 143 : UITableView.automaticDimension) 
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = UIColor.lightGray
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        if section == 0 || section == 1 {
            label.text = (section == 0 ? "Faculty" : "Students")
        } else {
            label.text = "Another \(section)"
        }
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textAlignment = .center
        view.addSubview(label)
        return view
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "QWERTYUI"
//    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return facultyArray.count
        case 1:
            return studentsArray.count
        case 3:
            return imageRestArray.count
        default:
            return 3
        }
//        return (section == 0 ? facultyArray.count : studentsArray.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 || indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            cell.delegate = self
            cell.tag = indexPath.row
            
            cell.sectionIndex = indexPath.section
            if indexPath.section == 0 {
                cell.updateFaculty(faculty: facultyArray[indexPath.row])
            } else {
                cell.update(student: studentsArray[indexPath.row])
            }
            return cell
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell.tag = indexPath.row
            cell.sectionIndex = indexPath.section
            cell.delegate = self
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
            cell.tag = indexPath.row
            cell.sectionIndex = indexPath.section
            cell.setup()
            cell.update(image: imageRestArray[indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//        vc.student = studentsArray[indexPath.row]
        
        //--------Present-----------
        
        //self.present(vc, animated: true, completion: nil)
        
        
        //--------Dissmis When Screen Present-----------
        
        //self.dismiss(animated: true, completion: nil)
        
        
        //--------Go To ViewController with Navigation Contoller-----------
        
        //self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func didTapNextButton(index: Int, section: Int) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        switch section {
        case 0:
            vc.faculty = facultyArray[index]
        case 1:
            vc.student = studentsArray[index]
        default:
            print("No Data")
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



















