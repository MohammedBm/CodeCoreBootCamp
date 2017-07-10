require './student.rb'
RSpec.describe Student do
  describe 'initialize' do
    it 'takes three arguemnts'do
      student = Student.new('Tom', 'Harold', 99)
      expect(student.first_name).to eq('Tom')
      expect(student.last_name).to eq('Harold')
      expect(student.score).to eq(99)
    end
  end

  describe 'Full name 'do
    it 'return the full name combined from the first name and the last name' do
    student = Student.new('Tom','Harold', 99)
    expect(student.full_name).to eq('Tom Harold')
    end
  end

  describe 'Grade' do
    it 'reutrn A for a score higer than 90' do
      student = Student.new('Tom','Harold', 99)
      expect(student.grade).to eq('A')
    end
    it 'reutrn B for a score higer than 75' do
      student = Student.new('Tom','Harold', 88)
      expect(student.grade).to eq('B')
    end
    it 'reutrn C for a score higer than 60' do
      student = Student.new('Tom','Harold', 66)
      expect(student.grade).to eq('C')
    end
    it 'reutrn F for a score lower than 50' do
      student = Student.new('Tom','Harold', 45)
      expect(student.grade).to eq('F')
    end











  end


end
