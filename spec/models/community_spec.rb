require 'rails_helper'

RSpec.describe Community, type: :model do

  before{@community = Community.new}

  describe 'Testes de preenchimento do model Community' do

    it 'name consegue ser preenchido?' do
      @community.name = 'libreoffice'
      expect(@community.name).to eq('libreoffice')
    end

    it 'project consegue ser preenchido?' do
      @community.project = 'libreoffice'
      expect(@community.project).to eq('libreoffice')
    end

  end

  describe 'testes de validacao do model Community' do

    it 'objeto community valido com campos obrigatorios preenchidos?' do
      @community.name = ''
      @community.project = ''
      expect(@community).to be_valid
    end

  end

end