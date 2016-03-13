require 'chefspec'
describe 'mytestfinal::default' do
let(:chef_run) {
 ChefSpec::SoloRunner.new.converge(described_recipe)
}
it 'create a file' do
 expect(chef_run).to create_file('/tmp/myfile.txt')
end
end
