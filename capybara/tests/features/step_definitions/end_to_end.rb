Quando('eu cadastro o usuario') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'lucas')
    find('#user_lastname').set('carvalho correia')
    find('#user_email').send_keys('lucas.carvalho79@hotmail.com')
    find('input[value="Criar"]').click
  end
  
  Entao('verifico se o usuario foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando('edito um usuario') do
    sleep(5)
    find('.btn.waves-light.blue').click
  end
  
  Entao('verifico se o usuario foi editado') do
    
  end