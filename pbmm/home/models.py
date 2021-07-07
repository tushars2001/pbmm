from django.db import models

# Create your models here.
from django.db import connection
import csv
from django.conf import settings
import os, random
import pdb


def dict_fetchall(cursor):
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


def search(numbers, bigball, lottery):
    data = []
    sql = ""
    sql_pb = "select n1,n2,n3,n4,n5,n6,n7,pot,dt,'pb' as lottery from exp.pbdata " \
             "where dt in ( select distinct date from exp.ncpb_sorted where 1=1"
    for key in numbers:
        sql_pb = sql_pb + " and date in ( SELECT distinct date FROM exp.ncpb_sorted " \
                          "where num in (" + numbers[key] + ") and seq not in (6,7) )"
    if bigball:
        sql_pb = sql_pb + " and date in ( SELECT distinct date FROM exp.ncpb_sorted " \
                          "where num in (" + bigball + ") and seq in (6) )"

    sql_pb = sql_pb + ")"

    sql_mm = "select n1,n2,n3,n4,n5,n6,n7,pot,dt,'mm' as lottery from exp.mmdata " \
             "where dt in ( select distinct date from exp.ncmm_sorted where 1=1"
    for key in numbers:
        sql_mm = sql_mm + " and date in ( SELECT distinct date FROM exp.ncmm_sorted " \
                          "where num in (" + numbers[key] + ") and seq not in (6,7) )"
    if bigball:
        sql_mm = sql_mm + " and date in ( SELECT distinct date FROM exp.ncmm_sorted " \
                          "where num in (" + bigball + ") and seq in (6) )"

    sql_mm = sql_mm + ")"

    if lottery == 'pb':
        sql = sql_pb
    if lottery == 'mm':
        sql = sql_mm
    if lottery == 'pbmm':
        sql = sql_pb + " union " + sql_mm

    sql = sql + " order by dt desc "

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_messages():
    data = []
    sql = "select * from exp.pbdata"
    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def loadpbdata():
    result = {}
    t_sql = "truncate exp.pbdata"
    t_sql_sorted = "truncate exp.pbdata_sorted"
    t_sql_normalized = "truncate exp.ncpb"
    t_sql_normalized_sorted = "truncate exp.ncpb_sorted"
    with connection.cursor() as cursor:
        cursor.execute(t_sql)
        cursor.execute(t_sql_sorted)
        cursor.execute(t_sql_normalized)
        cursor.execute(t_sql_normalized_sorted)
        cursor.close()

    with open(os.path.join(settings.BASE_DIR, "pbmm", "staticfiles", 'NCELPowerball.csv')) as f:
        reader = csv.DictReader(f)
        for row in reader:
            print(row)
            dt = row['Date']
            n1 = row['Number 1']
            n2 = row['Number 2']
            n3 = row['Number 3']
            n4 = row['Number 4']
            n5 = row['Number 5']
            pb = row['Powerball']
            pp = row['Power Play']
            pot = row['Jackpot']
            sorted_balls = []
            if n1:  # something to insert
                if not len(pot):
                    pot = 'NULL'
                if not len(pb):
                    pb = 'NULL'
                if not len(pp):
                    pp = 'NULL'

                sorted_balls = [int(n1), int(n2), int(n3), int(n4), int(n5)]
                sorted_balls.sort()
                consecutive = 1

                if sorted_balls[1] - sorted_balls[0] == 1:
                    consecutive = consecutive + 1
                if sorted_balls[2] - sorted_balls[1] == 1:
                    consecutive = consecutive + 1
                if sorted_balls[3] - sorted_balls[2] == 1:
                    if consecutive == 3:
                        consecutive = 4
                    if consecutive == 1:
                        consecutive = 2
                if sorted_balls[4] - sorted_balls[3] == 1:
                    if consecutive == 4:
                        consecutive = 5
                    if consecutive == 1:
                        consecutive = 2

                sql = """insert into exp.pbdata(dt,n1,n2,n3,n4,n5,n6,n7,pot) values (
                STR_TO_DATE('""" + dt + """', '%m/%d/%Y'),
                """ + n1 + """,
                """ + n2 + """,
                """ + n3 + """,
                """ + n4 + """,
                """ + n5 + """,
                """ + pb + """,
                """ + pp + """,
                """ + pot + """
                )
                """

                sql_sorted = """insert into exp.pbdata_sorted(dt,n1,n2,n3,n4,n5,n6,n7,pot,consecutive ) values (
                                STR_TO_DATE('""" + dt + """', '%m/%d/%Y'),
                                """ + str(sorted_balls[0]) + """,
                                """ + str(sorted_balls[1]) + """,
                                """ + str(sorted_balls[2]) + """,
                                """ + str(sorted_balls[3]) + """,
                                """ + str(sorted_balls[4]) + """,
                                """ + pb + """,
                                """ + pp + """,
                                """ + pot + """,
                                """ + str(consecutive) + """
                                )
                                """

                sql_nr_1 = """insert into exp.ncpb (date, num, seq) values(
                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n1 + """, 1)"""
                sql_nr_2 = """insert into exp.ncpb (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n2 + """, 2)"""
                sql_nr_3 = """insert into exp.ncpb (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n3 + """, 3)"""
                sql_nr_4 = """insert into exp.ncpb (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n4 + """, 4)"""
                sql_nr_5 = """insert into exp.ncpb (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n5 + """, 5)"""
                sql_nr_6 = """insert into exp.ncpb (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pb + """, 6)"""
                sql_nr_7 = """insert into exp.ncpb (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pp + """, 7)"""

                sql_nr_sr_1 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[0]) + """, 1)"""
                sql_nr_sr_2 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[1]) + """, 2)"""
                sql_nr_sr_3 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[2]) + """, 3)"""
                sql_nr_sr_4 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[3]) + """, 4)"""
                sql_nr_sr_5 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[4]) + """, 5)"""
                sql_nr_sr_6 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pb + """, 6)"""
                sql_nr_sr_7 = """insert into exp.ncpb_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pp + """, 7)"""

                with connection.cursor() as cursor:
                    cursor.execute(sql)
                    cursor.execute(sql_sorted)
                    cursor.execute(sql_nr_1)
                    cursor.execute(sql_nr_2)
                    cursor.execute(sql_nr_3)
                    cursor.execute(sql_nr_4)
                    cursor.execute(sql_nr_5)
                    cursor.execute(sql_nr_6)
                    cursor.execute(sql_nr_7)
                    cursor.execute(sql_nr_sr_1)
                    cursor.execute(sql_nr_sr_2)
                    cursor.execute(sql_nr_sr_3)
                    cursor.execute(sql_nr_sr_4)
                    cursor.execute(sql_nr_sr_5)
                    cursor.execute(sql_nr_sr_6)
                    cursor.execute(sql_nr_sr_7)
                    cursor.close()

    return result


def loadmmdata():
    result = {}
    t_sql = "truncate exp.mmdata"
    t_sql_sorted = "truncate exp.mmdata_sorted"
    t_sql_normalized = "truncate exp.ncmm"
    t_sql_normalized_sorted = "truncate exp.ncmm_sorted"
    with connection.cursor() as cursor:
        cursor.execute(t_sql)
        cursor.execute(t_sql_sorted)
        cursor.execute(t_sql_normalized)
        cursor.execute(t_sql_normalized_sorted)
        cursor.close()

    with open(os.path.join(settings.BASE_DIR, "pbmm", "staticfiles", 'NCEL_Mega-Millions.csv')) as f:
        reader = csv.DictReader(f)
        for row in reader:
            print(row)
            dt = row['Date']
            n1 = row['Number 1']
            n2 = row['Number 2']
            n3 = row['Number 3']
            n4 = row['Number 4']
            n5 = row['Number 5']
            pb = row['Megaball']
            pp = row['Megaplier']
            pot = row['Jackpot']
            sorted_balls = []
            if n1:  # something to insert
                if not len(pot):
                    pot = 'NULL'
                if not len(pb):
                    pb = 'NULL'
                if not len(pp):
                    pp = 'NULL'

                sorted_balls = [int(n1), int(n2), int(n3), int(n4), int(n5)]
                sorted_balls.sort()
                consecutive = 1

                if sorted_balls[1] - sorted_balls[0] == 1:
                    consecutive = consecutive + 1
                if sorted_balls[2] - sorted_balls[1] == 1:
                    consecutive = consecutive + 1
                if sorted_balls[3] - sorted_balls[2] == 1:
                    if consecutive == 3:
                        consecutive = 4
                    if consecutive == 1:
                        consecutive = 2
                if sorted_balls[4] - sorted_balls[3] == 1:
                    if consecutive == 4:
                        consecutive = 5
                    if consecutive == 1:
                        consecutive = 2

                sql = """insert into exp.mmdata(dt,n1,n2,n3,n4,n5,n6,n7,pot) values (
                STR_TO_DATE('""" + dt + """', '%m/%d/%Y'),
                """ + n1 + """,
                """ + n2 + """,
                """ + n3 + """,
                """ + n4 + """,
                """ + n5 + """,
                """ + pb + """,
                """ + pp + """,
                """ + pot + """
                )
                """

                sql_sorted = """insert into exp.mmdata_sorted(dt,n1,n2,n3,n4,n5,n6,n7,pot,consecutive) values (
                                STR_TO_DATE('""" + dt + """', '%m/%d/%Y'),
                                """ + str(sorted_balls[0]) + """,
                                """ + str(sorted_balls[1]) + """,
                                """ + str(sorted_balls[2]) + """,
                                """ + str(sorted_balls[3]) + """,
                                """ + str(sorted_balls[4]) + """,
                                """ + pb + """,
                                """ + pp + """,
                                """ + pot + """,
                                """ + str(consecutive) + """    
                                )
                                """

                sql_nr_1 = """insert into exp.ncmm (date, num, seq) values(
                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n1 + """, 1)"""
                sql_nr_2 = """insert into exp.ncmm (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n2 + """, 2)"""
                sql_nr_3 = """insert into exp.ncmm (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n3 + """, 3)"""
                sql_nr_4 = """insert into exp.ncmm (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n4 + """, 4)"""
                sql_nr_5 = """insert into exp.ncmm (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n5 + """, 5)"""
                sql_nr_6 = """insert into exp.ncmm (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pb + """, 6)"""
                sql_nr_7 = """insert into exp.ncmm (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pp + """, 7)"""

                sql_nr_sr_1 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[0]) + """, 1)"""
                sql_nr_sr_2 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[1]) + """, 2)"""
                sql_nr_sr_3 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[2]) + """, 3)"""
                sql_nr_sr_4 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[3]) + """, 4)"""
                sql_nr_sr_5 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[4]) + """, 5)"""
                sql_nr_sr_6 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pb + """, 6)"""
                sql_nr_sr_7 = """insert into exp.ncmm_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pp + """, 7)"""

                with connection.cursor() as cursor:
                    cursor.execute(sql)
                    cursor.execute(sql_sorted)
                    cursor.execute(sql_nr_1)
                    cursor.execute(sql_nr_2)
                    cursor.execute(sql_nr_3)
                    cursor.execute(sql_nr_4)
                    cursor.execute(sql_nr_5)
                    cursor.execute(sql_nr_6)
                    cursor.execute(sql_nr_7)
                    cursor.execute(sql_nr_sr_1)
                    cursor.execute(sql_nr_sr_2)
                    cursor.execute(sql_nr_sr_3)
                    cursor.execute(sql_nr_sr_4)
                    cursor.execute(sql_nr_sr_5)
                    cursor.execute(sql_nr_sr_6)
                    cursor.execute(sql_nr_sr_7)
                    cursor.close()

    return result


def loadlfldata():
    result = {}
    t_sql = "truncate exp.lfldata"
    t_sql_sorted = "truncate exp.lfldata_sorted"
    t_sql_normalized = "truncate exp.nclfl"
    t_sql_normalized_sorted = "truncate exp.nclfl_sorted"
    with connection.cursor() as cursor:
        cursor.execute(t_sql)
        cursor.execute(t_sql_sorted)
        cursor.execute(t_sql_normalized)
        cursor.execute(t_sql_normalized_sorted)
        cursor.close()

    with open(os.path.join(settings.BASE_DIR, "pbmm", "staticfiles", 'NCELLuckyForLife.csv')) as f:
        reader = csv.DictReader(f)
        for row in reader:
            print(row)
            dt = row['Date']
            n1 = row['Number 1']
            n2 = row['Number 2']
            n3 = row['Number 3']
            n4 = row['Number 4']
            n5 = row['Number 5']
            pb = row['Lucky Ball']
            pp = '0'
            pot = '0'
            sorted_balls = []
            if n1:  # something to insert
                if not len(pot):
                    pot = 'NULL'
                if not len(pb):
                    pb = 'NULL'
                if not len(pp):
                    pp = 'NULL'

                sorted_balls = [int(n1), int(n2), int(n3), int(n4), int(n5)]
                sorted_balls.sort()
                consecutive = 1

                if sorted_balls[1] - sorted_balls[0] == 1:
                    consecutive = consecutive + 1
                if sorted_balls[2] - sorted_balls[1] == 1:
                    consecutive = consecutive + 1
                if sorted_balls[3] - sorted_balls[2] == 1:
                    if consecutive == 3:
                        consecutive = 4
                    if consecutive == 1:
                        consecutive = 2
                if sorted_balls[4] - sorted_balls[3] == 1:
                    if consecutive == 4:
                        consecutive = 5
                    if consecutive == 1:
                        consecutive = 2

                sql = """insert into exp.lfldata(dt,n1,n2,n3,n4,n5,n6,n7,pot) values (
                STR_TO_DATE('""" + dt + """', '%m/%d/%Y'),
                """ + n1 + """,
                """ + n2 + """,
                """ + n3 + """,
                """ + n4 + """,
                """ + n5 + """,
                """ + pb + """,
                """ + pp + """,
                """ + pot + """
                )
                """

                sql_sorted = """insert into exp.lfldata_sorted(dt,n1,n2,n3,n4,n5,n6,n7,pot,consecutive ) values (
                                STR_TO_DATE('""" + dt + """', '%m/%d/%Y'),
                                """ + str(sorted_balls[0]) + """,
                                """ + str(sorted_balls[1]) + """,
                                """ + str(sorted_balls[2]) + """,
                                """ + str(sorted_balls[3]) + """,
                                """ + str(sorted_balls[4]) + """,
                                """ + pb + """,
                                """ + pp + """,
                                """ + pot + """,
                                """ + str(consecutive) + """
                                )
                                """

                sql_nr_1 = """insert into exp.nclfl (date, num, seq) values(
                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n1 + """, 1)"""
                sql_nr_2 = """insert into exp.nclfl (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n2 + """, 2)"""
                sql_nr_3 = """insert into exp.nclfl (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n3 + """, 3)"""
                sql_nr_4 = """insert into exp.nclfl (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n4 + """, 4)"""
                sql_nr_5 = """insert into exp.nclfl (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + n5 + """, 5)"""
                sql_nr_6 = """insert into exp.nclfl (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pb + """, 6)"""
                sql_nr_7 = """insert into exp.nclfl (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pp + """, 7)"""

                sql_nr_sr_1 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[0]) + """, 1)"""
                sql_nr_sr_2 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[1]) + """, 2)"""
                sql_nr_sr_3 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[2]) + """, 3)"""
                sql_nr_sr_4 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[3]) + """, 4)"""
                sql_nr_sr_5 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + str(sorted_balls[4]) + """, 5)"""
                sql_nr_sr_6 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pb + """, 6)"""
                sql_nr_sr_7 = """insert into exp.nclfl_sorted (date, num, seq) values(
                                    STR_TO_DATE('""" + dt + """', '%m/%d/%Y'), """ + pp + """, 7)"""

                with connection.cursor() as cursor:
                    cursor.execute(sql)
                    cursor.execute(sql_sorted)
                    cursor.execute(sql_nr_1)
                    cursor.execute(sql_nr_2)
                    cursor.execute(sql_nr_3)
                    cursor.execute(sql_nr_4)
                    cursor.execute(sql_nr_5)
                    cursor.execute(sql_nr_6)
                    cursor.execute(sql_nr_7)
                    cursor.execute(sql_nr_sr_1)
                    cursor.execute(sql_nr_sr_2)
                    cursor.execute(sql_nr_sr_3)
                    cursor.execute(sql_nr_sr_4)
                    cursor.execute(sql_nr_sr_5)
                    cursor.execute(sql_nr_sr_6)
                    cursor.execute(sql_nr_sr_7)
                    cursor.close()

    return result


def frequencies(size, lottery):
    data = []
    sql = "SELECT balls, size, lottery, frequency  FROM exp.frequencies_mapping where size = " + str(size)
    if lottery == 'pb':
        sql = sql + " and lottery = 'pb'"
    if lottery == 'mm':
        sql = sql + " and lottery = 'mm'"

    sql = sql + " order by frequency desc "
    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def consecutive(balls, lottery):
    data = []
    sqlpb = "SELECT *, 'pb' as lottery FROM exp.pbdata_sorted where consecutive = " + str(balls)
    sqlmm = "SELECT *, 'mm' as lottery FROM exp.mmdata_sorted where consecutive = " + str(balls)

    if lottery == 'pb':
        sql = sqlpb
    if lottery == 'mm':
        sql = sqlmm
    if lottery == 'pbmm':
        sql = sqlpb + " union " + sqlmm

    sql = sql + " order by dt desc "
    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def load_frequency(lottery, size):
    data = []
    sql_del = """
        truncate exp.frequencies
    """
    sql_2_pb = """
        insert into exp.frequencies (num,frequency,size,lottery)
            select num, count(num) as frequency, 2 as size, 'pb' as lottery from 
            (
            select  
            case when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n2)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n3)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n4)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n5)
                    when n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n2,",",n1.n3)
                    when n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n2,",",n1.n4)
                    when n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n2,",",n1.n5)
                    when n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n3,",",n1.n4)
                    when n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n3,",",n1.n5)
                    when n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n4,",",n1.n5)
                    else ""
                    end
            num
            from exp.pbdata_sorted n1, exp.pbdata_sorted n2 where n1.dt != n2.dt
            and 
            ( 
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or 
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or 
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or
                (
                    n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or
                (
                    n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or 
                (
                    n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or 
                (
                    n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) 
                or 
                (
                    n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) 
                or 
                (
                    n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) 
            )
            ) main group by num, 3,4 order by 2 desc

    """

    sql_2_mm = """
            insert into exp.frequencies (num,frequency,size,lottery)
                select num, count(num) as frequency, 2 as size, 'mm' as lottery from 
                (
                select  
                case when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n1,",",n1.n2)
                        when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n1,",",n1.n3)
                        when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n1,",",n1.n4)
                        when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n1,",",n1.n5)
                        when n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n2,",",n1.n3)
                        when n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n2,",",n1.n4)
                        when n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n2,",",n1.n5)
                        when n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n3,",",n1.n4)
                        when n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n3,",",n1.n5)
                        when n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        then concat(n1.n4,",",n1.n5)
                        else ""
                        end
                num
                from exp.mmdata_sorted n1, exp.mmdata_sorted n2 where n1.dt != n2.dt
                and 
                ( 
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or 
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or 
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or
                    (
                        n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or
                    (
                        n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or 
                    (
                        n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or 
                    (
                        n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) 
                    or 
                    (
                        n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) 
                    or 
                    (
                        n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) 
                )
                ) main group by num, 3,4 order by 2 desc

        """

    sql_3_pb = """
        insert into exp.frequencies (num,frequency,size,lottery)
            select num, count(num) as frequency, 3 as size, 'pb' as lottery from 
            (
            select  
            case when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                then concat(n1.n1,",",n1.n2,",",n1.n3)
                when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                then concat(n1.n1,",",n1.n2,",",n1.n4)
                when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                then concat(n1.n1,",",n1.n2,",",n1.n5)
                when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                then concat(n1.n1,",",n1.n3,",",n1.n4)
                when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                then concat(n1.n1,",",n1.n3,",",n1.n5)
                when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                then concat(n1.n1,",",n1.n4,",",n1.n5)
                else ""
                end
                num
            from exp.pbdata_sorted n1, exp.pbdata_sorted n2 where n1.dt != n2.dt
            and 
            ( 
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
            
                ) or 
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or 
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                ) or
                (
                    n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                )
            )
            ) main group by num, 3,4 order by 2 desc
    """

    sql_3_mm = """
            insert into exp.frequencies (num,frequency,size,lottery)
                select num, count(num) as frequency, 3 as size, 'mm' as lottery from 
                (
                select  
                case when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n2,",",n1.n3)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n2,",",n1.n4)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n2,",",n1.n5)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n3,",",n1.n4)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n3,",",n1.n5)
                    when n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    then concat(n1.n1,",",n1.n4,",",n1.n5)
                    else ""
                    end
                    num
                from exp.mmdata_sorted n1, exp.mmdata_sorted n2 where n1.dt != n2.dt
                and 
                ( 
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)

                    ) or 
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n2 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or 
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n3 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    ) or
                    (
                        n1.n1 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n4 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                        and n1.n5 in (n2.n1, n2.n2, n2.n3, n2.n4, n2.n5)
                    )
                )
                ) main group by num, 3,4 order by 2 desc
        """

    with connection.cursor() as cursor:
        cursor.execute(sql_del)
        cursor.execute(sql_2_mm)
        cursor.execute(sql_2_pb)
        cursor.execute(sql_3_mm)
        cursor.execute(sql_3_pb)
        cursor.close()

    return data


def map_frequencies():
    data = []

    sql_truc = "truncate exp.frequencies_mapping"

    with connection.cursor() as cursor:
        cursor.execute(sql_truc)
        cursor.close()

    sql_get = "SELECT num, size, lottery FROM exp.frequencies"

    with connection.cursor() as cursor:
        cursor.execute(sql_get)
        data = dict_fetchall(cursor)
        cursor.close()

    for row in data:
        balls = row['num'].split(",")
        sql = """
            select count(*) as frequency from exp.""" + row['lottery'] + """data_sorted where 1=1 """
        for ball in balls:
            sql = sql + " and (n1 = " + str(ball) + " or n2 = " + str(ball) + " or n3 = " + str(ball) + \
                  " or n4 = " + str(ball) + " or n5 = " + str(ball) + ")"

        with connection.cursor() as cursor:
            cursor.execute(sql)
            f = dict_fetchall(cursor)
            cursor.close()

        sql_map = """insert into exp.frequencies_mapping(balls,size,lottery,frequency) values ( 
                    '""" + row['num'] + """',
                    """ + str(row['size']) + """,
                    '""" + row['lottery'] + """',
                    """ + str(f[0]['frequency']) + """
                    )
        """

        with connection.cursor() as cursor:
            cursor.execute(sql_map)
            cursor.close()

    sql = """
       insert into exp.frequencies_mapping(balls,frequency,lottery,size)
        SELECT num, count(num) as frequency, 'pb' as lottery, 1 as size FROM exp.ncpb where seq in (1,2,3,4,5)
        group by num
        union 
        SELECT num, count(num) as frequency, 'mm' as lottery, 1 as size FROM exp.ncmm where seq in (1,2,3,4,5)
        group by num
    """

    with connection.cursor() as cursor:
        cursor.execute(sql)
        cursor.close()

    return data


def get_most_frequents(count=7, big_count=3):
    data = {}

    sql_pb_balls = """
            SELECT num, frequency_pb as frequency, 'pb' lottery FROM exp.numbers 
            where is_pb = 'N' and frequency_pb is not null order by frequency_pb desc 
            limit """ + str(count)

    sql_pb_big_balls = """
            SELECT num, frequency_pb as frequency, 'pb' lottery FROM exp.numbers 
            where is_pb = 'N' and frequency_pb is not null order by frequency_pb desc 
            limit """ + str(big_count)

    sql_mm_balls = """
                SELECT num, frequency_pb as frequency, 'mm' lottery FROM exp.numbers 
                where is_pb = 'N' and frequency_mm is not null order by frequency_mm desc 
                limit """ + str(count)

    sql_mm_big_balls = """
                SELECT num, frequency_pb as frequency, 'mm' lottery FROM exp.numbers 
                where is_pb = 'Y' and frequency_mm is not null order by frequency_mm desc 
                limit """ + str(big_count)

    with connection.cursor() as cursor:
        cursor.execute(sql_pb_balls)
        data['sql_pb_balls'] = dict_fetchall(cursor)
        cursor.execute(sql_pb_big_balls)
        data['sql_pb_big_balls'] = dict_fetchall(cursor)
        cursor.execute(sql_mm_balls)
        data['sql_mm_balls'] = dict_fetchall(cursor)
        cursor.execute(sql_mm_big_balls)
        data['sql_mm_big_balls'] = dict_fetchall(cursor)
        cursor.close()

    return data


def get_least_frequents(count=7, big_count=3):
    data = {}

    sql_pb_balls = """
            SELECT num, frequency_pb as frequency, 'pb' lottery FROM exp.numbers 
            where is_pb = 'N' and frequency_pb is not null order by frequency_pb asc 
            limit """ + str(count)

    sql_pb_big_balls = """
            SELECT num, frequency_pb as frequency, 'pb' lottery FROM exp.numbers 
            where is_pb = 'N' and frequency_pb is not null order by frequency_pb asc 
            limit """ + str(big_count)

    sql_mm_balls = """
                SELECT num, frequency_pb as frequency, 'mm' lottery FROM exp.numbers 
                where is_pb = 'N' and frequency_mm is not null order by frequency_mm asc 
                limit """ + str(count)

    sql_mm_big_balls = """
                SELECT num, frequency_pb as frequency, 'mm' lottery FROM exp.numbers 
                where is_pb = 'Y' and frequency_mm is not null order by frequency_mm asc 
                limit """ + str(big_count)

    with connection.cursor() as cursor:
        cursor.execute(sql_pb_balls)
        data['sql_pb_balls'] = dict_fetchall(cursor)
        cursor.execute(sql_pb_big_balls)
        data['sql_pb_big_balls'] = dict_fetchall(cursor)
        cursor.execute(sql_mm_balls)
        data['sql_mm_balls'] = dict_fetchall(cursor)
        cursor.execute(sql_mm_big_balls)
        data['sql_mm_big_balls'] = dict_fetchall(cursor)
        cursor.close()

    return data


def draw_generator(lottery, count=5):
    draw = []
    draws = []
    pot = []
    ball_range = [1, 69]
    big_ball_range = [1, 25]
    if lottery == 'pb':
        ball_range = [1, 69]
        big_ball_range = [1, 26]
    if lottery == 'mm':
        ball_range = [1, 70]
        big_ball_range = [1, 25]
    if lottery == 'lfl':
        ball_range = [1, 48]
        big_ball_range = [1, 18]

    # most_frequents = get_most_frequents()
    # least_frequents = get_least_frequents()

    # sql_freq = """select num, count(num) as frequency from exp.ncmm where `date` > '2018-01-01'
    #                    and seq  not in (6,7) group by num"""
    # with connection.cursor() as cursor:
    #     cursor.execute(sql_freq)
    #     data = dict_fetchall(cursor)
    #     cursor.close()

    while True:
        # empty the pot
        pot.clear()
        # empty draw
        draw.clear()
        # prepare pot
        for ball in range(ball_range[1]):
           pot.append((ball + 1))
        # take out 5 balls from pot to draw
        # pot = [4, 4, 4, 4, 10, 10, 10, 10, 14, 14, 14, 14, 20, 20, 20, 20, 11, 11, 11, 19, 19, 19, 27, 27, 27, 58, 58,
        # 58, 41, 41, 15, 17, 25, 26, 31, 37, 44, 46,66]
        # pot = [27, 31, 4, 5, 37, 9, 48, 1, 29, 3, 27, 31, 4, 5, 37, 9, 48, 1, 29, 3, 43, 2, 47, 15, 45, 28, 13, 30]

        # for record in data:
        #     for freq in range(record['frequency']):
        #         pot.append(record['num'])

        random.shuffle(pot)
        ball = pot.pop()
        while ball in pot: pot.remove(ball)
        draw.append(ball)

        random.shuffle(pot)
        ball = pot.pop()
        while ball in pot: pot.remove(ball)
        draw.append(ball)

        random.shuffle(pot)
        ball = pot.pop()
        while ball in pot: pot.remove(ball)
        draw.append(ball)

        random.shuffle(pot)
        ball = pot.pop()
        while ball in pot: pot.remove(ball)
        draw.append(ball)

        random.shuffle(pot)
        ball = pot.pop()
        while ball in pot: pot.remove(ball)
        draw.append(ball)
        # sort the draw
        draw.sort()
        # add power/mega ball
        draw.append(random.randint(big_ball_range[0], big_ball_range[1]))
        # if I got 5 pots, then it's done
        if len(draws) >= int(count):
            break
        if check_draw(draw):  # If It is a good Draw
            draws.append(draw.copy())  # Make it into Draws

    return draws


def process_numbers():
    data = []
    sql_t = "truncate exp.numbers"
    sql = """
            insert into exp.numbers (num, is_pb, frequency_pb, frequency_mm)
            select num_mm, is_pb_mm, frequency_pb, frequency_mm from
                (
                select mm.num num_mm, pb.num num_pb, frequency_mm, frequency_pb,mm.is_pb is_pb_mm, pb.is_pb is_pb_pb from
                (
                SELECT num, count(num) as frequency_mm, 'N' is_pb FROM exp.ncmm where seq not in (6,7)
                group by num, 'mm'
                union
                SELECT num, count(num) as frequency_mm, 'Y' is_pb FROM exp.ncmm where seq  in (6)
                group by num, 'mm'
                ) mm left outer join
                (
                SELECT num, count(num) as frequency_pb, 'N' is_pb FROM exp.ncpb where seq not in (6,7)
                group by num, 'pb'
                union
                SELECT num, count(num) as frequency_pb, 'Y' is_pb FROM exp.ncpb where seq  in (6)
                group by num, 'pb'
                ) pb
                on mm.num = pb.num and mm.is_pb = pb.is_pb
                union
                select mm.num num_mm, pb.num num_pb, frequency_mm, frequency_pb,mm.is_pb is_pb_mm, pb.is_pb is_pb_pb from
                (
                SELECT num, count(num) as frequency_mm, 'N' is_pb FROM exp.ncmm where seq not in (6,7)
                group by num, 'mm'
                union
                SELECT num, count(num) as frequency_mm, 'Y' is_pb FROM exp.ncmm where seq  in (6)
                group by num, 'mm'
                ) mm right outer join
                (
                SELECT num, count(num) as frequency_pb, 'N' is_pb FROM exp.ncpb where seq not in (6,7)
                group by num, 'pb'
                union
                SELECT num, count(num) as frequency_pb, 'Y' is_pb FROM exp.ncpb where seq  in (6)
                group by num, 'pb'
                ) pb
                on mm.num = pb.num and mm.is_pb = pb.is_pb
            ) main
    """

    with connection.cursor() as cursor:
        cursor.execute(sql_t)
        cursor.execute(sql)
        cursor.close()

    return data


def check_draw(draw):
    # four_plus_match = check_four_plus_match(draw)
    return True


def check_four_plus_match(draw):
    return False


def insert(draws, lottery):
    data = []
    for draw in draws:
        sql = """insert into exp.draws(n1,n2,n3,n4,n5,n6,lottery,code) values (
                """ + str(draw[0]) + """,
                """ + str(draw[1]) + """,
                """ + str(draw[2]) + """,
                """ + str(draw[3]) + """,
                """ + str(draw[4]) + """,
                """ + str(draw[5]) + """,
                '""" + str(lottery) + """',
                '""" + 'FREQBASED' + """'
        )
        """
        try:
            with connection.cursor() as cursor:
                cursor.execute(sql)
                cursor.close()
        except:
            data.append(draw.copy())
    return data
