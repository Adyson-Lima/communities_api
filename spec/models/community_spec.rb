require 'rails_helper'

RSpec.describe Community, type: :model do

  before{@community = Community.new}

  describe 'Testes de preenchimento do model Community' do

    it 'name consegue ser preenchido?' do
      @community.name = 'libreoffice'
      expect(@community.name).to eq('libreoffice')
    end

    it 'project consegue ser preenchido?' do
      @community.project = ''
      expect(@community.project).to eq('libreoffice')
    end

  end

end