#BMI Calculator

import os
import sys

#choose unit system
print("Hi, this is a BMI Calculator")
unit = raw_input('Type preference; for US, type "US" and for Imperial, type "Imperial": ')

#unit system = US
if unit == "US":

    heightus = float(input('Input your height in inches:'))
    weightus = float(input('Input your weight in pounds:'))

    BMI_US = 703 * ((weightus)/(heightus)**2)
    print ("---------------------------")
    print "BMI = ", BMI_US

    goal_over = (24 * (heightus**2))/703
    goal_under = (18.5 * (heightus**2))/703

    fat_loss_over = weightus - goal_over
    fat_loss_over_calories = fat_loss_over * 3500

    fat_loss_under = weightus - goal_under
    fat_loss_under_calories = fat_loss_under * 3500

    if BMI_US < 18.5:
        print ('Underweight BMI')

    elif BMI_US > 18.5 and BMI_US < 25:
        print ('Healthy BMI')

    elif BMI_US > 25 and BMI_US < 30:
        print ('Overweight BMI')

    elif BMI_US > 30:
        print ('Obese BMI')

    else:
        print ('!!!!ERROR ERROR ERROR ERROR ERROR!!!!!')

    if BMI_US > 24.9:
        print "In order to be considered healthy weight, you must be ", goal_over, "pounds."
        print "You must loose ", fat_loss_over, "pounds, which is equivalent to ", fat_loss_over_calories, "calories."
    if BMI_US <18.49:
        print "In order to be considered healthy weight, you must be ", goal_under
        print "You must gain ", fat_loss_under, "pounds, which is equivalent to ", fat_loss_under_calories, "calories."

#unit system = Imperial
if unit == "Imperial":
    height = float(input('Input your height in meters'))
    weight = float(input('Input weight in kg'))
    BMI_im = (weight / (height**2))


    print ("---------------------------")
    print "BMI = ", BMI_im

    goal_over = (24 * (height**2))
    goal_under = (18.5 * (height**2))

    fat_loss_over = weight - goal_over
    fat_loss_over_calories = fat_loss_over * 3500

    fat_loss_under = weight - goal_under
    fat_loss_under_calories = fat_loss_under * 3500

    if BMI_im < 18.5:
        print ('Underweight BMI')

    elif BMI_im > 18.5 and BMI_im < 25:
        print ('Healthy BMI')

    elif BMI_im > 25 and BMI_im < 30:
        print ('Overweight BMI')

    elif BMI_im > 30:
        print ('Obese BMI')

    else:
        print ('!!!!ERROR ERROR ERROR ERROR ERROR!!!!!')

    if BMI_im > 24.9:
        print "In order to be considered healthy weight, you must be ", goal_over, "kilograms."
        print "You must loose ", fat_loss_over, "pounds, which is equivalent to ", fat_loss_over_calories, "calories."
    if BMI_im <18.49:
        print "In order to be considered healthy weight, you must be ", goal_under
        print "You must gain ", fat_loss_under, "kilograms, which is equivalent to ", fat_loss_under_calories, "calories."