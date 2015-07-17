require "spec_helper"

RSpec.describe JamJar do
  describe "#model" do
    subject { JamJar.model }

    specify { expect_it.to be < ActiveRecord::Base }
    specify { expect_it.to be_connected }

    context "with block" do
      subject { JamJar.model { def self.a; true; end } }

      specify { expect(subject.a).to be_truthy }
    end

    context "with columns" do
      subject { JamJar.model { column :foo, :string } }

      specify { expect(subject.new).to respond_to(:foo) }

      context "with options" do
        subject { JamJar.model { column :foo, :string, default: "bar" } }
        
        specify { expect(subject.new.foo).to eq "bar" }
      end
    end
  end
end
