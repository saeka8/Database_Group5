# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.

# MySQL data structure info
from django.db import models

class WeatherCity(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=100)
    country = models.ForeignKey('WeatherCountry', models.DO_NOTHING)

    def __str__(self):
        return self.name

    class Meta:
        managed = False
        db_table = 'weather_city'


class WeatherCountry(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'weather_country'


class WeatherWeather(models.Model):
    id = models.BigAutoField(primary_key=True)
    date = models.DateField()
    temperature = models.FloatField()
    humidity = models.FloatField()
    city = models.ForeignKey(WeatherCity, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'weather_weather'
