require('rspec')
require('allergy')

describe('String#allergy') do
  it('takes a string with an exact allergy score and returns the corresponding allergy') do
    expect(('128').allergy()).to(eq("cats"))
  end
  it('takes a string with a non-exact allergy score and returns the corresponding allergies') do
    expect(('192').allergy()).to(eq("cats, pollen"))
end
  it('take a string with a larger input value than possible and return all possible allergy values') do
  expect(('500').allergy()).to(eq("Don't eat or breath, you have issues that include: cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs"))
end
end
