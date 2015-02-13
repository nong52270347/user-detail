package user.detail

class InstallController {

    def index() {
        if(User.count() == 0)
            redirect(controller: 'User', action: 'createAdmin')
    }
}
