class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'lucas'
        sobrenome.set 'carvalho correia'
        email.set 'lucas@gmail.com'
        endereco.set 'asd'
        universidade.set 'fiap'
        profissao.set 'analista'
        genero.set 'masc'
        idade.set '27'
        criar.click
    end
end