class WebMotors_page < SitePrism::Page 

    def marca_filtro(marca)
        find('.Filters__line--right').click
        find('.Filters__line__result', text: marca).click
    end

    def modelo_filtro(modelo)
        find('.Filters__line--icon--right', text: 'Todos os modelos').click
        find('.Filters__line__result', text: modelo).click
    end

    def versao_filtro(versao) 
        find('.Filters__line--gray').click
        find('.Filters__line__result', text: versao).click
    end
end