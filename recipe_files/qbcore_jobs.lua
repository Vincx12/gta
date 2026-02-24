QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true

QBShared.Jobs = {
  unemployed = { label='Citoyen', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Interimaire', payment=20} } },

  bus = { label='Bus', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Chauffeur', payment=45} } },
  taxi = { label='Taxi', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Recrue', payment=40},
      ['1']={name='Chauffeur', payment=55},
      ['2']={name='Senior', payment=70},
      ['3']={name='Superviseur', payment=85},
      ['4']={name='Patron', isboss=true, payment=100},
  }},
  reporter = { label='Journaliste', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Reporter', payment=50} } },
  garbage = { label='Eboueur', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Collecteur', payment=50} } },
  tow = { label='Depanneur', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Chauffeur', payment=55} } },

  police = { label='Police Nationale', type='leo', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Eleve', payment=110},
      ['1']={name='Agent', payment=140},
      ['2']={name='Brigadier', payment=180},
      ['3']={name='Lieutenant', payment=220},
      ['4']={name='Commissaire', isboss=true, payment=260},
  }},
  ambulance = { label='SAMU', type='ems', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Ambulancier', payment=110},
      ['1']={name='Paramedic', payment=145},
      ['2']={name='Medecin', payment=190},
      ['3']={name='Chirurgien', payment=235},
      ['4']={name='Chef', isboss=true, payment=270},
  }},
  mechanic = { label='Garage', type='mechanic', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Apprenti', payment=100},
      ['1']={name='Mecanicien', payment=135},
      ['2']={name='Senior', payment=175},
      ['3']={name='Chef atelier', payment=215},
      ['4']={name='Patron', isboss=true, payment=250},
  }},
  cardealer = { label='Concession', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Recrue', payment=60},
      ['1']={name='Vendeur', payment=80},
      ['2']={name='Financement', payment=100},
      ['3']={name='Senior', payment=120},
      ['4']={name='Directeur', isboss=true, payment=150},
  }},

  avocat = { label='Cabinet Avocat', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Collaborateur', payment=90},
      ['1']={name='Avocat', payment=120},
      ['2']={name='Senior', payment=150},
      ['3']={name='Associe', isboss=true, payment=180},
  }},
  juge = { label='Tribunal', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Juge', isboss=true, payment=220} } },
  prefet = { label='Prefecture', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Prefet', isboss=true, payment=260} } },
}
