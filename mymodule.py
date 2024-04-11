def average(*numbers):
    avg = sum(numbers)/len(numbers)
    print(avg)

def get_non_empty_input(prompt):
    while True:
        user_input = input(prompt)
        if user_input.strip(): 
            return user_input
        
def format_with_commas(value, currency_symbol= '₦'):
    if isinstance(value, (int, float)):
        formatted_value = format(value, ',')
        return f'{currency_symbol} {formatted_value}'
    else:
        return value
    
def get_ordinal_indicator(day):
    """Returns the appropriate ordinal indicator (st, nd, rd, th) for a given day number."""
    if 4 <= day % 10 <= 20 or day % 100 == 0:
        return "th"
    else:
        return {1: "st", 2: "nd", 3: "rd"}[day % 10]
    
def format_date_for_output(date_obj):
    day = date_obj.strptime("%d")
    month_name = date_obj.strptime("%b")
    year = date_obj.strptime("%Y")
    ordinal_indicator = get_ordinal_indicator(int(day))
    formatted_date = f"{day}{ordinal_indicator} {month_name}, {year}"
    return formatted_date
    

