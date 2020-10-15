from django.contrib.auth.views import PasswordResetConfirmView, PasswordResetView, PasswordResetCompleteView, \
    PasswordResetDoneView, LoginView, LogoutView

from django.urls import path

from user_auth.views import RegistrationView

urlpatterns = [
    path('login/', LoginView.as_view(template_name='user_auth/login.html'), name='login'),
    path('logout/', LogoutView.as_view(template_name='user_auth/logout.html'), name='logout'),
    path('registration/', RegistrationView.as_view(), name='registration'),
    path('password_reset/', PasswordResetView.as_view(
        template_name='user_auth/password_reset.html',
        email_template_name='user_auth/email_message_for_password_change.html',
        success_url='../password_reset_done/'),
         name='password-reset'),
    path('password_reset_done/', PasswordResetDoneView.as_view(template_name='user_auth/password_reset_done.html'),
         name='password-reset-done'),
    path('password_reset/<str:uidb64>/<str:token>/', PasswordResetConfirmView.as_view(
        template_name='user_auth/password_reset_confirm.html',
        success_url='../../../password_reset_complete/'),
         name='password-reset-confirm'),
    path('password_reset_complete/', PasswordResetCompleteView.as_view(
        template_name='user_auth/password_reset_complete.html'), name='password-reset-complete'),
]
