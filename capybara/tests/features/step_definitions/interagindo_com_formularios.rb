Quando('eu faco cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'lucas')
    find('#user_lastname').set('carvalho correia')
    find('#user_email').send_keys('lucas.carvalho79@hotmail.com')
    fill_in(id: 'user_address', with: 'rua 1')
    find('#user_university').set('fiap')
    find('#user_profile').send_keys('qa')
    fill_in(id: 'user_gender', with: 'masculino')
    find('#user_age').set('27')
    find('input[value="Criar"]').click
  end
  
  Entao('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end