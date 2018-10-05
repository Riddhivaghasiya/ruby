class Student
  # @@no_of_students=0
  def initialize(id,name,mark, address)
    @stu_id=id
    @stu_name=name
    @stu_mark=mark
    @stu_address=address
  end
  def display_details()
      puts "student id #@stu_id"
      puts "student name #@stu_name"
      puts "student mark #@stu_mark"
      puts "student address #@stu_address"
   end
   # def total_no_of_students()
   #    @@no_of_students += 1
   #    puts "Total number of Student: #@@no_of_students"
   # end
 end
 #create object
    stu1=Student.new("123","john","260","ahmedabad")
    stu2=Student.new("345","devid","280","vadodara")
    stu3=Student.new("567","nil","289","rajkot")
    stu4=Student.new("789","luice","278","surat")
 # call methods
    stu1.display_details()
    stu2.display_details()
    stu3.display_details()
    stu4.display_details()
