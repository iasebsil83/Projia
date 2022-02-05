#!/bin/bash



##################################################
#      How to create & use global variables :    #
#                                                #
#  CREATE :                                      #
#  | globvar_add "var_name" "var_value"          #
#                                                #
#  USE : (to use in C template for example)      #
#  | //Copyright __var_name__ 2021               #
#  |                                             #
#  or even in code :                             #
#  | printf("hello %s\n", __var_name__);         #
#                                                #
##################################################



# Your pseudo
globvar_add "pseudo" "myPseudo"



# Your real name
globvar_add "real_name" "Alan TURING"



# Project footer giving information on how to contact you
globvar_add "contact" "Contact : mail@example.com"
globvar_add "github"  "GitHub  : https://github.com/example"
globvar_add "slogan"  "This is a slogan example !"



# Your copyright (header)
globvar_add "copyright" "(c) Copyright FIRSTNAME LASTNAME YEAR"
