Dado('que eu esrtou na tela de drapdrop') do
    visit '/iteracoes/draganddrop'
  end
  
  Quando('movo o drapdrop') do
    @primeiro_elemento = find('#winston')
    @segundo_elemento = find('#dropzone')

    @primeiro_elemento.drag_to(@segundo_elemento)
    sleep(5)
  end