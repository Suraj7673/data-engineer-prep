#Calculate total amount spent per city using pure Python loops + dict.
#this is a list that contains dictionary like a bucket

orders = [
    {"id": 1, "amount": 500, "city": "Pune"},
    {"id": 2, "amount": 1500, "city": "Mumbai"},
    {"id": 3, "amount": 2500, "city": "Pune"},
    {"id": 4, "amount": 800, "city": "Delhi"},
]

total = {}

# record is a single object contains id,amount,dictionary.

for record in orders:
    city = record["city"]
    amount = record["amount"]
    
    if city not in total:
        total[city] = 0
        
    total[city] += amount
#keep indentation accordingly

print(total)

#print the output otside loop

#O/P
#{'Pune': 3000, 'Mumbai': 1500, 'Delhi': 800}