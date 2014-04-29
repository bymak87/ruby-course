require_relative '../exercises.rb'


describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe 'Exercise 1' do
  it "returns the number of elements in an array" do
    result = Exercises.ex1([1,2,3,4])
    expect(result).to eq(4)
  end
end

describe 'Exercise 2' do
  it "returns the second element in an array" do
    result = Exercises.ex2([3,4,6,7])
    expect(result).to eq(4)
  end
end

describe 'Exercise 3' do
  it "returns the sum of a given array of numbers" do
    result = Exercises.ex3([3,1,5,2])
    expect(result).to eq(11)
  end
end

describe 'Exercise 4' do
  it "returns the max number of a given array of numbers" do
    result = Exercises.ex4([3,1,5,2])
    expect(result).to eq(5)
  end
end

describe 'Exercise 5' do
  it "should iterate through an array and puts each number" do
  STDOUT.should_receive(:puts).with(10)
  Exercises.ex5([10])
  end
end

describe 'Exercise 6' do
  it "should update the last item in the array to 'panda'" do
    result = Exercises.ex6(["monkey", "tree", "bamboo"])
    expect(result).to eq(["monkey", "tree", "bamboo", "panda"])
  end

  it "should update the last item to 'GODZILLA' if the last element is already 'panda'" do
    result = Exercises.ex6(["monkey", "panda"])
    expect(result).to eq(["monkey", "panda", "GODZILLA"])
  end
end

describe 'Exercise 7' do
  it "should add str to the end of the array if it exists in the array" do
    result = Exercises.ex7(["monkey", "banana", "tree"], "monkey")
    expect(result).to eq(["monkey", "banana", "tree", "monkey"])

  end
end

describe 'Exercise 8' do
  it " iiterates through an array and prints name and occupation" do
    STDOUT.should_receive(:puts).with("bob: builder")
    STDOUT.should_receive(:puts).with("thomas: train")
    result = Exercises.ex8([{:name=>"bob", :occupation=> "builder"}, {:name=>"thomas", :occupation=> "train"}])

  end
end

describe 'Exercise 9' do
  it "returns true if a given time is a leap year, otherwise false" do
    result = Exercises.ex9(2008)
    expect(result).to eq(true)
  end
end
