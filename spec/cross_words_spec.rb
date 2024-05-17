# frozen_string_literal: true

require_relative '../lib/cross_words'

def fail_message(expected, result)
  %(expected:\n#{expected}\ngot:\n#{result})
end

RSpec.describe CrossWords do
  it 'returns No intersection found. for dog & cat' do
    expected = 'No intersection found.'

    result = CrossWords.intersect(horizontal: 'dog', vertical: 'cat')

    expect(result).to eq(expected), fail_message(expected, result)
  end

  it 'returns the intersection of cat & hat' do
    expected = <<~EOS
       h
      cat
       t
    EOS

    result = CrossWords.intersect(horizontal: 'cat', vertical: 'hat')

    expect(result).to eq(expected), fail_message(expected, result)
  end

  it 'returns the intersection of balloon & bat' do
    expected = <<~EOS
      balloon
      a
      t
    EOS

    result = CrossWords.intersect(horizontal: 'balloon', vertical: 'bat')

    expect(result).to eq(expected), fail_message(expected, result)
  end

  it 'returns the intersection of faint & test' do
    expected = <<~EOS
      faint
          e
          s
          t
    EOS

    result = CrossWords.intersect(horizontal: 'faint', vertical: 'test')

    expect(result).to eq(expected), fail_message(expected, result)
  end

  it 'returns the intersection of road & dad' do
    expected = <<~EOS
        d
      road
        d
    EOS

    result = CrossWords.intersect(horizontal: 'road', vertical: 'dad')

    expect(result).to eq(expected), fail_message(expected, result)
  end

  it 'returns the intersection of dad & road' do
    expected = <<~EOS
       r
       o
      dad
       d
    EOS

    result = CrossWords.intersect(horizontal: 'dad', vertical: 'road')

    expect(result).to eq(expected), fail_message(expected, result)
  end
end
