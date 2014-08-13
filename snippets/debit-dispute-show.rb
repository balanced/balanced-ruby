# debit_href is the stored href of the debit
debit = Balanced::Debit.fetch(debit_href)
dispute = debit.dispute