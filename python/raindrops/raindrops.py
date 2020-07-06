DROPS = {3: 'Pling', 5: 'Plang', 7: 'Plong'}


def convert(number):
    raindrop = ''.join(DROPS[key] for key in DROPS if number % key == 0)

    return raindrop if raindrop else str(number)
