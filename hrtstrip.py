# -*- coding: utf-8 -*-
"""
Created on Fri May 20 15:29:39 2016

@author: nroshak
ganked from http://stackoverflow.com/questions/20203101/removing-n-in-between-double-quotes-in-a-csv-unix

Usage:
hrtstrip ('infile','outfile','newtext to replace \n') 

Example usage:
hrtstrip ('/Users/nroshak/prog/offshore/Entities.csv','/Users/nroshak/prog/offshore/Entities.out.csv',' ')

"""

import sys, csv, os


def hrtstrip (inputfile,outputfile,newtext):
    print("Input file " + inputfile)
    print("Output file " + outputfile)
    with open(inputfile, "r") as input:
       with open(outputfile, "w") as output:
          w = csv.writer(output, delimiter=',', quotechar='"', quoting=csv.QUOTE_NONNUMERIC, lineterminator='\n')
          for record in csv.reader(input):
             w.writerow(tuple(s.replace("\n", newtext) for s in record))
    print("All done")      
