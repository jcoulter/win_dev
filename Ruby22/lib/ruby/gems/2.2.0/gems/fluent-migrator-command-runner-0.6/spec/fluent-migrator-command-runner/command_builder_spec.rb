
require 'spec_helper'

describe FluentMigratorCommandRunner::CommandBuilder do

	let(:builder){FluentMigratorCommandRunner::CommandBuilder}
	let(:oracle_command){FluentMigratorCommandRunner::OracleMigrationCommand}
	let(:command_stub){double(FluentMigratorCommandRunner::OracleMigrationCommand)}

	before { allow(oracle_command).to receive(:new).and_return(command_stub)}
	before { allow(command_stub).to receive(:build)}

	it 'should create new oracle migration command with options' do
		expected_options = {}
		builder.build(expected_options)
		expect(oracle_command).to have_received(:new).with(expected_options)
	end

	it 'should build oracle migration command ' do
		builder.build
		expect(command_stub).to have_received(:build)
	end

	it 'should return built oracle migration command ' do
		expected_command = "command string"
		allow(command_stub).to receive(:build).and_return(expected_command)
		actual = builder.build
		expect(actual).to be(expected_command)
	end

end