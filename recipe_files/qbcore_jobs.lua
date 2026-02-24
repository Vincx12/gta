QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true

QBShared.Jobs = {
  unemployed = { label='Civilian', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Freelancer', payment=20} } },

  bus = { label='Bus', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Driver', payment=45} } },
  taxi = { label='Taxi', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Recruit', payment=40},
      ['1']={name='Driver', payment=55},
      ['2']={name='Senior Driver', payment=70},
      ['3']={name='Supervisor', payment=85},
      ['4']={name='Manager', isboss=true, payment=100},
  }},
  reporter = { label='Reporter', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Journalist', payment=50} } },
  garbage = { label='Garbage', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Collector', payment=50} } },
  tow = { label='Tow', defaultDuty=true, offDutyPay=false, grades={ ['0']={name='Driver', payment=55} } },

  police = { label='Los Santos Police Department', type='leo', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Cadet', payment=110},
      ['1']={name='Officer', payment=140},
      ['2']={name='Sergeant', payment=180},
      ['3']={name='Lieutenant', payment=220},
      ['4']={name='Chief', isboss=true, payment=260},
  }},
  ambulance = { label='Los Santos Fire & Rescue', type='ems', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='EMT', payment=110},
      ['1']={name='Paramedic', payment=145},
      ['2']={name='Doctor', payment=190},
      ['3']={name='Surgeon', payment=235},
      ['4']={name='Chief', isboss=true, payment=270},
  }},
  mechanic = { label='LS Customs', type='mechanic', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Apprentice', payment=100},
      ['1']={name='Mechanic', payment=135},
      ['2']={name='Senior', payment=175},
      ['3']={name='Lead', payment=215},
      ['4']={name='Manager', isboss=true, payment=250},
  }},
  cardealer = { label='Premium Deluxe Motorsport', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Recruit', payment=60},
      ['1']={name='Sales', payment=80},
      ['2']={name='Finance', payment=100},
      ['3']={name='Senior Sales', payment=120},
      ['4']={name='Manager', isboss=true, payment=150},
  }},

  -- DOJ / Justice
  lawyer = { label='Law Firm', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Associate', payment=90},
      ['1']={name='Attorney', payment=120},
      ['2']={name='Senior Attorney', payment=150},
      ['3']={name='Partner', isboss=true, payment=180},
  }},
  judge = { label='District Court', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Judge', isboss=true, payment=220},
  }},

  -- Government
  governor = { label='City Government', defaultDuty=true, offDutyPay=false, grades={
      ['0']={name='Governor', isboss=true, payment=260},
  }},
}
