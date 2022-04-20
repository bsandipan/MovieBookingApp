import subprocess

bookings = 'python bookings/bookings.py'
movies = 'python movies/movies.py'
showtimes = 'python showtimes/showtimes.py'
user = 'python user/user.py'

services_list = [bookings, movies, showtimes, user]

for service in services_list:
    p = subprocess.Popen(service, stdout=subprocess.PIPE, shell=True)
    out, err = p.communicate()
    result = out.split('\n')
    for lin in result:
        if not lin.startswith('#'):
            print(lin)

