users = Hash.new

def add() 
  puts "Digite seu username"
  k = gets.chomp
  puts "Digite sua senha"
  v = gets.chomp 
  users[:k] = v 
  puts users
  home()  
end

def login 
    x = true  
    while x do
     puts "Digite seu username"
     k = gets.chomp
     puts "Digite sua senha"
     v = gets.chomp
     if (users.has_key?!(k) and users.has_value?!(v))
       puts 'Falha ao autenticar'    
     elsif (users.has_key?(k) and users.has_value?(v))
       puts 'Usuário Autenticado'
       x = false
     end
    end
   end

def home()
 puts "Bem-vindo ao Autenticador"
 47.times { print '-' }
 puts
 puts '1 - Login | 2 - Registrar | 3 - Listar Usuários'
 r = gets.chomp.to_i
 if (r == 2)   
  add()
 elsif r == 1
   login()
 end
end

home()
     



