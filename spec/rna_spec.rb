require "spec_helper"
require "guard/rna"

module Guard
  describe Rna do
    before { Notifier.stub(:notify) }

    it { should be_a_kind_of ::Guard::Guard }

    describe "#run_all" do
      subject { guard.run_all }
      let(:guard) { described_class.new [], :notification => notification }
      let(:notification) { false }
      let(:command) { mock "command" }

      it "runs return true rna command runs successfully" do
        guard.stub(:command).and_return(true)
        guard.should_receive(:command).exactly(1).times
        subject
      end

      it "runs return false rna command runs unsuccessfully" do
        guard.stub(:command).and_return(false)
        expect { subject }.to throw_symbol(:task_has_failed)
      end
    end

  end
end

