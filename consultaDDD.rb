$lista = {
    "bauru" => 14,
    "sp" => 11,
    "campinas" => 19,
    "santos" => 13
}

def consulta
  loop do   
    47.times { print '-' }
    puts
    puts "Digite alguma dessas cidades. Digite N para sair"
    puts $lista.keys
    k = gets.chomp.downcase
    break if k == 'n'        
    v = $lista[k]
    if ($lista.has_key?(k))
      47.times { print '-' }
      puts
      puts "O DDD de #{k} é #{v}"
    else 
      puts "Cidade não encontrada tente novamente"
    end  
  end  
end  

loop do
    puts "Você gostaria de pesquisar um DDD de alguma cidade? (S/N)"
    r = gets.chomp.downcase
    break if r != 's'    
    if (r == 's')
      consulta()
    end
end
    
 