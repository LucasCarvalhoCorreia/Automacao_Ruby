Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find('.activator').hover
    # find('.activator').click
    sleep(5)
  end