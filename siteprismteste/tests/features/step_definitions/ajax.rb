Quando('clico no botao') do
    @ajax = AjaxPage.new
    @ajax.load

    @ajax.clica_botao
    sleep(3)
  end
  
  Entao('verifico se apareceu') do
    @ajax.wait_for_mensagem
    expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
  end