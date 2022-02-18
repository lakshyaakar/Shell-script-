#!/bin/bash
lscpu >> /home/lakshya/Documents/Assignment1/email.txt
mail -s 'Mail through terminal' lakshyaakar007@gmail.com < /home/lakshya/Documents/Assignment1/email.txt
