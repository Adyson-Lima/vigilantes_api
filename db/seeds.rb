puts 'criando vigilantes...'
5.times do |i|
  Vigilante.create(name: ['Chassey', 'Torque', 'Clyde'].sample, vehicle: 'Veiculo proprio')
end
puts'vigilantes criados com sucesso!'