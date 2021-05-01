#Passos que é comum para dois ou mais steps

Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
    sleep 5
end

Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".alert-dark")
    expect(@login_page.alert_dark.text).to eql expect_alert
  end