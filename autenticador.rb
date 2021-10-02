require 'bcrypt'

$users = {}
 
class RegistroCadastro  
  def criptografiaSenha(senha)
    BCrypt::Password.create(senha)
  end
  

 def add
   puts "Digite seu username"
   k = gets.chomp
   puts "Digite sua senha"
   v = gets.chomp   
   v = criptografiaSenha(v)   
   $users.store(k, v)
   home()  
 end

 def login
    x = true  
    while x do
     puts "Digite seu username"
     k = gets.chomp
     puts "Digite sua senha"
     v = gets.chomp    
     if ($users.has_key?(k) and $users.has_value?(v))
       puts 'Usuário Autenticado'
       x = false
     else 
      puts 'FALHA AO AUTENTICAR, TENTE NOVAMENTE'
      puts
     end
    end
   end
  end

def list
  47.times { print '-' }
  puts 
  puts 'USUÁRIOS CADASTRADOS'
  puts $users.keys
  47.times { print '-' }
  puts
  home()
end


def home()
 puts "Bem-vindo ao Autenticador"
 47.times { print '-' }
 puts
 puts '1 - Login | 2 - Registrar | 3 - Listar Usuários'
 r = gets.chomp.to_i
 if (r == 2)   
  RegistroCadastro.add
 elsif (r == 1)
   RegistroCadastro.login
   elsif (r == 3)
    list()
 end
end

RegistroCadastro = RegistroCadastro.new
home()
     



