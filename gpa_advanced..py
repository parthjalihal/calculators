print "This is a GPA calculator."
unit = raw_input ("N for Needham, R for Rock Canyon and B for Both")

if unit == "R":
	A_RC = float(input('How many non-ap As: '))
	AAP_RC = float(input('How many AP As'))
	B_RC = float(input("How many non-AP Bs"))
	BAP_RC = float(input('How many AP Bs'))

	RC_unweighted = (((A_RC+AAP_RC)*4) + ((BAP_RC+B_RC)*3)) / (A_RC+AAP_RC+B_RC+BAP_RC)
	RC_weighted = ((5*AAP_RC) + (4* BAP_RC) + (4*A_RC) + (3*B_RC)) / (A_RC+AAP_RC+B_RC+BAP_RC)

	print "Your Rock Canyon unweighted GPA is ", RC_unweighted, "and your weighted is ", RC_weighted

if unit == "N":
	A_N = float(input('How many non-ap As: '))
	AAP_N = float(input('How many AP/Honors As'))
	Aminus = float(input('How many -As in honors/ap'))
	BAP_N = float(input('How many AP/Honors +Bs'))

	NHS_unweighted = (((A_N + AAP_N)*4) + (Aminus*3.67) + (BAP_N*3.33)) / ((A_N + AAP_N + Aminus + BAP_N))
	NHS_weighted = ((AAP_N*5) + (4.67*Aminus) + (4.33*BAP_N) + (A_N*4)) / (A_N + AAP_N + Aminus + BAP_N)
