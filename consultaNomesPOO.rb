$a = []

class Student 
    attr_accessor :first_name
    
    def initialize(firstname)
      @first_name = firstname   
    end

    def imprimindo      
     $a.push(self.first_name) # colocar comando de adicionar
     47.times { print '-' }
     puts
     puts "LISTA DE NOMES"
     puts $a.join(", ")
    end
  end
  
  loop do 
    puts "Você gostaria de adicionar um nome a lista? (S/N)"
    r = gets.chomp.downcase 
    break if r != 's'
    if (r == 's')
      puts "Digite seu nome"
      nome = gets.chomp 
      puts "Digite seu sobrenome"     
      aluno = Student.new(nome)
      puts aluno.imprimindo
    end
  end  
  