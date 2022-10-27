require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end
  it '#initialize' do
    expect(@course).to be_an_instance_of(Course)
  end
  it 'has a name' do
    expect(@course.name).to eq("Calculus")
  end
  it 'has capacity' do
    expect(@course.capacity).to eq(2)
  end
  it 'has no students' do
    expect(@course.students).to eq([])
  end
  it 'check if full' do
    expect(@course.full?).to eq(false)
  end
  it 'can enroll students' do
    @course.enroll(@student1)
    @course.enroll(@student2)
    expect(@course.students).to eq([@student1, @student2])
    expect(@course.full?).to eq(true)
  end
end
