import stripe
from django.conf import settings
from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.views.decorators.csrf import csrf_exempt

""" 処理を定義するファイル """

def set_stripe_api_key():
    stripe.api_key = settings.STRIPE_SECRET_KEY

def get_my_domain(request):
    return f'{request.scheme}://{request.get_host()}'

def payment(request):
    if request.method == 'POST':
        set_stripe_api_key()
        domain_url = get_my_domain(request)
        try:
            # 支払いセッションを作成
            checkout_session = stripe.checkout.Session.create(
                success_url = domain_url + '/thanks/',
                cancel_url  = domain_url + '/payment/',
                payment_method_types = ['card'],
                mode = 'payment',
                line_items=[
                    {
                        'name': 'example',
                        'quantity': 1,
                        'currency': 'jpy',
                        'amount': '5000',
                    }
                ]
            )
            return redirect(checkout_session.url)
        except Exception as e:
            return HttpResponse(status=500)
    return render(request, 'payment.html') # ここの部分を変更してください

def thanks(request):
    return render(request, 'thanks.html')  # ここの部分を変更してください