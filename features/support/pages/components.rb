require 'rspec'

class Popup
    include Capybara::DSL
    include RSpec::Matchers

    # Verifica se o texto do popup corresponde ao esperado
    def have_text(text)
        popup = find('.swal2-html-container')
        expect(popup.text).to eql text
    end

end