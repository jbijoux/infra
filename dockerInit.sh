 docker-compose run web python3 manage.py migrate
 docker-compose run web python3 manage.py collectstatic
 docker-compose run web python3 manage.py populatedb --createsuperuser
 docker-compose up
