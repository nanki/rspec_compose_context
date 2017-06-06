require "spec_helper"

describe RspecComposeContext do
  it "has a version number" do
    expect(RspecComposeContext::VERSION).not_to be nil
  end

  shared_context 'sum' do
    subject do
      a + b
    end
  end

  shared_context 'a' do
    metadata[:description] = "a = 1"

    let :a do
      1
    end
  end

  shared_context 'b' do |value|
    let :b do
      value
    end
  end

  compose_context :sum, :a, [:b, 2] do
    it { is_expected.to eq 3 }
  end
end
