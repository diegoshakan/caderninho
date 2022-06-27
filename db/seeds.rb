user_1 = User.create(email: "diego@example.com",
                     first_name: FFaker::NameBR.first_name,
                     last_name: FFaker::NameBR.last_name,
                     password: "changeme",
                     password_confirmation: "changeme")

Payment.create(title: "Energia", description: "Sem gato", value: 200.00, date: Date.today, user: user_1)