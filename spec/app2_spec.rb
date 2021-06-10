require_relative '../apps/app2/main.rb'
require_relative './app_executor'

RSpec.describe 'app2' do
  describe 'main(with executor)' do
    subject { AppExecutor.execute('apps/app2/main.rb') { |context| context.main } }
    it { is_expected.to eq 'hello, app2' }
  end

  describe 'main' do
    subject { main }
    it { is_expected.to eq 'hello, app2' }
  end
end
