---------------------------------------------------------------------------------------------------
-------------------------------------- urls.py(mainproject) ---------------------------------------
---------------------------------------------------------------------------------------------------
from django.contrib import admin
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('', include('royalestate.urls')),
    path('admin/', admin.site.urls),
    path('accounts/', include('accounts.urls')),

]
urlpatterns = urlpatterns + static(settings.MEDIA_URL, document_root= settings.MEDIA_ROOT)

---------------------------------------------------------------------------------------------------
---------------------------------------- urls.py(accounts) ----------------------------------------
---------------------------------------------------------------------------------------------------
from django.urls import path
from . import views

urlpatterns = [
    path("register", views.register, name="register"),
    path("login", views.login, name="login"),
    path("logout", views.logout, name="logout")
]
