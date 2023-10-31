require './lib/travel'

p Travel
    .new
    .with_dates('01/11/2023', '06/11/2023')
    .from('Goiânia-GO')
    .to('Porto Alegre-RS')
    .plan!