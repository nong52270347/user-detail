package user.detail

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class HomeController {

    def springSecurityService

    def index() {
        if (SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')) {
            redirect(controller: "user", action: "list")
        } else if (SpringSecurityUtils.ifAnyGranted('ROLE_USER')){
            redirect(controller: "user", action: "changePassword", id: springSecurityService.currentUser.id)
        } else {
            redirect(controller: "login", action: "auth")
        }
    }
}
