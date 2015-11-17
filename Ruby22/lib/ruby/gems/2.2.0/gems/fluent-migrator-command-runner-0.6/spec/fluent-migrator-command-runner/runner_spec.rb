require 'spec_helper'

describe FluentMigratorCommandRunner::CommandBuilder do

	let(:runner){FluentMigratorCommandRunner::Runner}
	let(:kernel){Kernel}
	let(:system_error){$?}

	before { allow(kernel).to receive(:system).and_return(true)}

	it "should execute command" do
		allow(system_error).to receive(:exitstatus).and_return(0)
		expected_command = "echo Bravo"
		runner.execute(expected_command)
		expect(kernel).to have_received(:system).with(expected_command)
	end

	context 'fluent migrator failure' do
		it "should raise exception " do
			allow(kernel).to receive(:system)
			allow(system_error).to receive(:exitstatus).and_return(1)

			expect{runner.execute('')}.to raise_error()
		end

		it "should raise exception when command is invalid" do
			allow(kernel).to receive(:system)
			allow(system_error).to receive(:exitstatus).and_return(127)
			expect{runner.execute('')}.to raise_error()
		end
	end
end
