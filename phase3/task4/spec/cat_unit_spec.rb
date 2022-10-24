require 'cat'

RSpec.describe CatFacts do
  it 'should return fact about cat' do
    fake_request = double :requester
    allow(fake_request).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Purring does not always indicate that a cat is happy and healthy - some cats will purr loudly when they are terrified or in pain.","length":129}')
    cat_fact = CatFacts.new(fake_request)
    expect(cat_fact.provide).to eq "Cat fact: Purring does not always indicate that a cat is happy and healthy - some cats will purr loudly when they are terrified or in pain."
  end
end