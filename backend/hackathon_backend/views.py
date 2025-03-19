import stripe
from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.views.decorators.csrf import csrf_exempt

""" 処理を定義するファイル """

def get_price_id():
    return "xxx"

def get_my_domain(request):
    return f'{request.scheme}://{request.get_host()}'

def payment(request):
    return render(request, 'payment.html')

@csrf_exempt
def create_checkout_session(request):
    my_domain = get_my_domain(request)
    price_id = get_price_id()
    try:
        checkout_session = stripe.checkout.Session.create(
            success_url = my_domain + '/success.html?session_id={CHECKOUT_SESSION_ID}',
            cancel_url  = my_domain + '/cancel.html',
            payment_method_types = ['card'],
            mode = 'payment',
            line_items=[
                {
                    'price': price_id,
                    'quantity': 1
                }
            ]
        )
        return redirect(checkout_session.url, code=303)
    except Exception as e:
        return HttpResponse(status=500)