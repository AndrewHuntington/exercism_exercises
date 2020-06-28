DROPS = {3: 'Pling', 5: 'Plang', 7: 'Plong'}


def convert(number):
    raindrop = ''

    for key in DROPS:
        if (number % key) == 0:
            raindrop += DROPS[key]

    if raindrop == '':
        return str(number)
    else:
        return raindrop
