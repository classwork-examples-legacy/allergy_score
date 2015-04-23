require('rspec')
require('allergy')

describe('String#allergy') do
  it('takes a string with an exact allergy score and returns the corresponding allergy') do
    expect(('128').allergy()).to(eq("cats"))
  end
end
