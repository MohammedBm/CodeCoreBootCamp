require './drive_dog.rb'

RSpec.describe DogDrive do

  describe 'give_bone' do
    it 'returns the number of bones the dog has' do
      dog = DogDrive.new
      expect(dog.give_bone('small')).to eq(1)
    end

    it 'cannot hold more than 3 bones' do
      dog = DogDrive.new
      dog.give_bone('one')
      dog.give_bone('two')
      dog.give_bone('five')
      expect(dog.bones.count).to eq(3)
    end


    it 'return the name of the last bone' do
      dog = DogDrive.new
      dog.give_bone('one')
      dog.give_bone('two')
      dog.give_bone('three')
      expect(dog.eat_bone).to eq('three')
    end

    it 'removes a bone from the bones collection' do
      dog = DogDrive.new
      dog.give_bone('one')
      dog.give_bone('two')
      dog.give_bone('three')
      dog.eat_bone
      expect(dog.bones.count).to eq(2)
    end

  end


  describe 'bone_count' do
    it 'reutrn the number of bones with the dog' do
      dog = DogDrive.new
      dog.give_bone('uno')
      dog.give_bone('dos')
      dog.give_bone('tres')
      expect(dog.bone_count).to eq(3)
    end
  end


end
