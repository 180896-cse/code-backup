def write_csv(filename):
    import csv
   
    L = [['Date', 'Name', 'Notes'], 
         ['2016/1/18', 'Martin Luther King Day', 'Federal Holiday'],
         ['2016/2/2','Groundhog Day', 'Observance'], 
         ['2016/2/8','Chinese New Year', 'Observance'], 
         ['2016/2/14','Valentine\'s Day', 'Obervance'], 
         ['2016/5/8','Mother\'s Day', 'Observance'], 
         ['2016/8/19','Statehood Day', 'Hawaii Holiday'], 
         ['2016/10/28','Nevada Day', 'Nevada Holiday']]
    
    f = open(filename, 'w', newline='')
    for item in L:
        csv.writer(f).writerow(item)
    f.close()

filename = input("Enter a filename : ")

write_csv(filename)


