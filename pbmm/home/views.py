from django.shortcuts import render
from . import models


# Create your views here.


def homepage_view(request):
    # assert False, request
    messages_data = models.get_messages()
    return render(request, "homepage.html", {
        "pbdata": messages_data
    })


def loadpbdata(request):
    result = models.loadpbdata()
    return render(request, "result_loadpbdata.html", {
        "pbdata": result
    })


def loadmmdata(request):
    result = models.loadmmdata()
    return render(request, "result_loadpbdata.html", {
        "pbdata": result
    })


def loadlfldata(request):
    result = models.loadlfldata()
    return render(request, "result_loadpbdata.html", {
        "pbdata": result
    })


def search(request):
    if request.method == 'POST':
        numbers = {}
        searching = []
        lottery = 'pb'
        bigball = None
        if 'num1' in request.POST and len(request.POST['num1']):
            numbers['num1'] = request.POST['num1']
            searching.append(int(request.POST['num1']))
        if 'num2' in request.POST and len(request.POST['num2']):
            numbers['num2'] = request.POST['num2']
            searching.append(int(request.POST['num2']))
        if 'num3' in request.POST and len(request.POST['num3']):
            numbers['num3'] = request.POST['num3']
            searching.append(int(request.POST['num3']))
        if 'num4' in request.POST and len(request.POST['num4']):
            numbers['num4'] = request.POST['num4']
            searching.append(int(request.POST['num4']))
        if 'num5' in request.POST and len(request.POST['num5']):
            numbers['num5'] = request.POST['num5']
            searching.append(int(request.POST['num5']))
        if 'num6' in request.POST and len(request.POST['num6']):
            bigball = request.POST['num6']
        if 'lottery' in request.POST and len(request.POST['lottery']):
            lottery = request.POST['lottery']

    result = models.search(numbers, bigball, lottery)
    if bigball:
        bigball = int(bigball)
    return render(request, "search_result.html", {
        "searchdata": result, "numbers": searching, "bigball": bigball
    })


def frequencies(request):
    if request.method == 'POST':
        balls = 3
        lottery = 'pb'
        if 'balls' in request.POST and len(request.POST['balls']):
            balls = request.POST['balls']
        if 'lottery' in request.POST and len(request.POST['lottery']):
            lottery = request.POST['lottery']

    result = models.frequencies(balls, lottery)

    return render(request, "frequencies_result.html", {
        "searchdata": result, "balls": balls
    })


def consecutive(request):
    if request.method == 'POST':
        balls = 3
        lottery = 'pb'
        if 'balls' in request.POST and len(request.POST['balls']):
            balls = request.POST['balls']
        if 'lottery' in request.POST and len(request.POST['lottery']):
            lottery = request.POST['lottery']

    result = models.consecutive(balls, lottery)

    return render(request, "consecutive_result.html", {
        "searchdata": result, 'balls': balls
    })


def load_frequency(request):
    pb_2 = models.load_frequency('pb', 2)
    pb_3 = models.load_frequency('pb', 3)
    mm_2 = models.load_frequency('mm', 2)
    mm_3 = models.load_frequency('mm', 3)
    return render(request, "result_load_frequency.html")


def map_frequency(request):
    models.map_frequencies()
    return render(request, "result_map_frequency.html")


def process_numbers(request):
    models.process_numbers()
    return render(request, "result_map_frequency.html")


def draw_generator(request):
    lottery = 'pbmm'
    count = 1000000
    draws = []
    insert = []
    if request.method == 'GET' and 'lottery' in request.GET:
        lottery = request.GET['lottery']
        if 'count' in request.GET:
            count = request.GET['count']
        draws = models.draw_generator(lottery, count)
        insert = models.insert(draws, lottery)

    return render(request, "draw_generator.html", {'draws': len(draws), 'insert': insert})


def simulation(request):
    draws = []
    draws.append([9, 22, 39, 41, 54, 19])
    draws.append([4, 43, 56, 63, 68, 13])
    draws.append([18, 22, 27, 38, 52, 11])
    draws.append([14, 36, 44, 46, 53, 18])
    draws.append([1, 26, 48, 51, 59, 25])
    latest = [17, 20, 42, 45, 65, 12]
    expected = []
    simulated = []
    i = 0
    while True:
        i = i + 1
        get_draw = models.draw_generator('mm', 7)
        if get_draw[0] == draws[0] and get_draw[1] == draws[1] and get_draw[2] == draws[2] \
                and get_draw[3] == draws[3] and get_draw[4] == draws[4] and latest == get_draw[5]:
            print("***** BINGO MATCHED ALL. NEXT WILL BE *******")
            print(get_draw[6])
            print("*************************")
            break
        else:
            if i % 10000 == 0:
                print(".")

    return True
