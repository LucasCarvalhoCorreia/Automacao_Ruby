Quando('acesso a url') do
    visit 'http://automacaocombatista.herokuapp.com'
  end
  
  Entao('eu verifico se estou na pagina correta') do
    expect(page).to have_current_path('http://automacaocombatista.herokuapp.com', url:true)
  end