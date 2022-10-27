require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end
  it '#initialize' do
    expect(@student).to be_an_instance_of(Student)
  end

  it 'has a name' do
    expect(@student.name).to eq("Morgan")
  end

  it 'has an age' do
    expect(@student.age).to eq(21)
  end

  it 'keeps scores' do
    expect(@student.scores).to eq([])
  end

  it 'can add scores' do
    @student.log_score(89)
    @student.log_score(78)
    expect(@student.scores).to eq([89, 78])
  end

  it 'can calculate grade' do
    @student.log_score(89)
    @student.log_score(78)
    expect(@student.grade).to eq(83.5)
  end
end #Average of all the scores
