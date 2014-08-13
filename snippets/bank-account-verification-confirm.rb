# time has elapsed, so find the BankAccountVerification
verification = Balanced::BankAccountVerification.find('/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw')
amount_1 = 1
amount_2 = 1
verification.confirm(amount_1, amount_2)