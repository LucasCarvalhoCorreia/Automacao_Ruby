Quando('preencho os campos') do
    @pagina_iframe = PaginaPadrao.new
    @pagina_iframe.load

    @pagina_iframe.preencher_campo do |iframe|
        iframe.nome.set 'lucas'
        iframe.ultimo_nome.set 'carvalho correia'
    end

    sleep(3)
  end