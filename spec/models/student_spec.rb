require 'rails_helper'

RSpec.describe Student, type: :model do
  # write your student model here

  describe 'associations' do
    it {should belong_to (:school)}
  end

  # describe 'uniqueness' do
  #   Student.create!(name: 'Bender Bending Rodriguez', school_id: 123, student_number: 456, gpa: 3.5)
  #   enrolled_name { Student.new(name: 'Bender Bending Rodriguez', school_id: 123, student_number: 456, gpa: 3.5)}
  #   it {should validiate_uniqueness_of (:name)}
  # end

  it 'has a name' do
    name = 'Colton'
    student = Student.create(name: name)
    expect(student.name).to eq(name)
  end

  it 'has a school id' do
    school_id = 123
    student = Student.create(school_id: school_id)
    expect(student.school_id).to eq(school_id)
  end

  it 'has a student number' do
    student_number = 666
    student = Student.create(student_number: student_number)
    expect(student.student_number).to eq(student_number)
  end

  it 'has a GPA' do 
    gpa = 5.0
    student = Student.create(gpa: gpa)
    expect(student.gpa).to eq(gpa)
  end


end 
