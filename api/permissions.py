from rest_framework import permissions


class IsProfileOwnerOrReadOnly(permissions.BasePermission):
    message = 'You used unsafe method and you are not owner of this information'

    def has_permission(self, request, view):
        if request.method in permissions.SAFE_METHODS:
            return True
        profile_pk = view.kwargs.get('profile_pk', False)
        if profile_pk == 'me':
            return True
        return request.user.profile.pk == int(profile_pk)


class IsProfileOwner(permissions.BasePermission):
    message = 'You are not owner of this information'

    def has_permission(self, request, view):
        profile_pk = view.kwargs.get('profile_pk', False)
        if profile_pk == 'me':
            return True
        return request.user.profile.pk == int(profile_pk)
