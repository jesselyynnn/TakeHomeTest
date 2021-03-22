#define rule
rule = {
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000
}

text = input("Input : ")
value = 0

text = list(text)
index=0
while index<len(text):
    if (index+1<len(text)):
        if (text[index]=="I" and text[index+1]=="V"):
            value = value+4
            index=index+1
        elif (text[index]=="I" and text[index+1]=="X"):
            value = value+9
            index=index+1
        elif (text[index]=="X" and text[index+1]=="L"):
            value = value+40
            index=index+1
        elif (text[index]=="X" and text[index+1]=="C"):
            value = value+90
            index=index+1
        elif (text[index]=="C" and text[index+1]=="D"):
            value = value+400
            index=index+1
        elif (text[index]=="C" and text[index+1]=="M"):
            value = value+900
            index=index+1
        else:
            #common text
            value = value + rule[text[index]]
    else:
        #common text
        value = value + rule[text[index]]
            
    index=index+1

print(value)
