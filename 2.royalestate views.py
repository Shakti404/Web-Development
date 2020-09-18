from django.shortcuts import render, redirect
from django.contrib.auth.models import User, auth
from django.contrib import messages 
# Create your views here.
def  login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username= username, password= password)
        if user is not None:
            auth.login(request, user)
            return redirect('/')
        else:
            messages.info(request, 'Invalid username or passoword')
            return redirect('login')
    else:
        return render(request, 'login.html')

def register(request):
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        email = request.POST['email']

        if password1== password2:
            if User.objects.filter(username=username).exists():
                messages.info(request, 'Username allready exists')
                return redirect('register')
            elif User.objects.filter(email=email).exists():
                print('Email Taken')
                messages.info(request, 'Email already exists')
            else:
                user = User.objects.create_user(username= username, password= password1, email= email, first_name= first_name,last_name=last_name)
                user.save()
                print('Account Created Succsfully')
                return redirect('login')
        else:
            print('Password not Matching')
            messages.info(request, 'Password not matching')
            return redirect('register')
        return redirect('/')
    else:
        return render(request, 'register.html')

def logout(request):
    auth.logout(request)
    return redirect('/')
