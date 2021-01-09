require 'dice'

describe Dice do

  it 'responds to roll' do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end

  it 'should return 1 - 6' do
    dice = Dice.new
    expect(dice.roll).to be_between(1, 6)
  end

  it 'should accept the option of multiple dice' do
    dice = Dice.new
    expect(dice).to respond_to(:number_of_dice).with(1).argument
  end

  it 'should be random' do
    dice = Dice.new
    allow(dice).to receive(:rand).and_return(5)
    expect(dice.roll).to eq 5
  end

 end
