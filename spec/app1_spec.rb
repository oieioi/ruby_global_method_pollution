require_relative '../apps/app1/main.rb'
require_relative './app_executor'

RSpec.describe 'app1' do
  describe 'main' do
    subject { AppExecutor.execute('apps/app1/main.rb') { |context| context.main } }
    it { is_expected.to eq 'hello, app1' }
  end

  describe 'main' do
    subject { main }
    it {
      pending 'app2 が読み込まれてると上書きされて落ちる'
      is_expected.to eq 'hello, app1' }
  end
end
