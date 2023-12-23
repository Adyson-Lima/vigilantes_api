RSpec.describe 'Testes de verificação de existencia de pastas' do

  it 'a pasta spec/models existe?' do
    expect(Dir.exist?('spec/models')).to eq(true)
  end

  it 'a pasta spec/controllers existe?' do
    expect(Dir.exist?('spec/controllers')).to eq(true)
  end

end