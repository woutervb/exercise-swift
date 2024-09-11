struct Student {
  var Name: String
  var Grade: Int
}

class GradeSchool {
  var enrolled = [Student]()

    func roster() -> [String] {
      var names: [String] = []
      enrolled.sort{$0.Name < $1.Name}
      enrolled.sort{$0.Grade < $1.Grade}
      for element in enrolled {
        names.append(element.Name)
      }
      return names
    }

    func addStudent(_ name: String, grade: Int) -> Bool{
      let names = self.roster()
      guard !names.contains(name) else { return false }

      enrolled.append(Student(Name: name, Grade: grade))
      return true
    }

    func studentsInGrade(_ grade: Int) -> [String] {
      var names: [String] = []
      for element in enrolled {
        if element.Grade == grade {
          names.append(element.Name)
        }
      }
      names.sort()
      return names
    }
}
