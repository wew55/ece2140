TO COMPILE: make CNN
TO CLEAN: make clean
TO SEE THE OUTPUT OF ONE OUTPUT IMAGE: ./CNN inference + "number". For instance, ./CNN inference 4
	Output will be: our prediction 4, the corresponding label 4
TO SEE THE RESULT FOR THE ENTIRE DATASET: ./CNN test
	Output will be: Start running, batch 0 have 93.00000% of good prediction ... 

Note: we define relative path into all the file so that should work as long as you keep the same hierarchy
Note: to see intermediate result, there are log file in the folder layer
	0 corresponding to the last layer
	1 to the inpuyt image and go on 
  
