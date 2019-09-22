require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Namemappedmodule do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ NameMappedModule }).should.be.instance_of Command::Namemappedmodule
      end
    end
  end
end

