require 'spec_helper'

describe OData::Properties::String do
  let(:subject) { OData::Properties::String.new('Stringy', 'This is an example') }

  it { expect(subject.type).to eq('Edm.String') }
  it { expect(subject.value).to eq('This is an example')}

  it { expect(lambda {
    subject.value = 'Another example'
    subject.value
  }.call).to eq('Another example') }

  describe '#is_unicode?' do
    it { expect(subject.is_unicode?).to eq(true) }
  end
end