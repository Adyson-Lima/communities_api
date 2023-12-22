puts 'criando communities...'
5.times do |i|
  Community.create(name: ['openbsd', 'ruby', 'rails'].sample, project: 'projeto relacionado')
end
puts 'communities criadas com sucesso!'