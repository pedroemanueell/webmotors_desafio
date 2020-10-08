class Loja_page < SitePrism::Page 

    def accesando_lista
        find('.btn-option--list').click 
    end

end