
class Contact 
    @nome
    @telefone
    attr_accessor :nome, :telefone

    def initialize (nome, telefone)
        @nome = nome
        @telefone = telefone
    end
end

class Agenda 
    @contatos
    attr_accessor :contatos 

    def initialize (contatos)
        @contatos = contatos
    end
end


agenda = Agenda.new []
p agenda

while true 
    puts "1-Contatos\n2-Adicionar Contato\n3-Ver Contato\n4-Editar Contato\n5-Excluir Contato\n0-Sair"
    answer = gets.chomp.to_i
    if answer.equal? 0
        break
    end

    case
    when answer == 1 then
         p agenda 
    when answer == 2 then
        puts "Digite o Nome e o Telefone do contato"
        nome = gets.chomp
        telefone = gets.chomp 
        agenda.contatos.push(Contact.new(nome,telefone))
    when answer == 3 then
        puts "Digite o Nome do contato"
        nome = gets.chomp
        p agenda.contatos.select { |x| x.nome == nome } 
    #when answer == 4 then 
    when answer == 5 then
        puts "Digite o Nome do contato"
        nome = gets.chomp
        contact = agenda.contatos.select { |x| x.nome == nome }
        p agenda.contatos.delete(contact)                      
    end        


end