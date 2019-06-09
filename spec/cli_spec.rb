require 'spec_helper'

RSpec.describe 'Otter command', type: :aruba do
  context 'otter version option' do
    before(:each) { run('otter v') }
    it { expect(last_command_started).to be_successfully_executed }
  end

  context 'otter make ruby' do
    before(:each) { run('otter make ruby') }
    it { expect(last_command_started).to be_successfully_executed }
  end

  context 'otter setup' do
    before(:each) { run('otter setup') }
    it { expect(last_command_started).not_to be_successfully_executed }
  end
end
