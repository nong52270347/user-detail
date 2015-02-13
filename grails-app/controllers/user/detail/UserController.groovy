package user.detail

import grails.plugins.springsecurity.Secured
import grails.plugins.springsecurity.SpringSecurityService
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.springframework.dao.DataIntegrityViolationException


class UserController {

    SpringSecurityService springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    @Secured(['ROLE_ADMIN'])
    def index() {
        redirect(action: "list", params: params)
    }

    @Secured(['ROLE_ADMIN'])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        [userInstance: new User(params)]
    }


    def createAdmin() {
        [userInstance: new User(params)]
        render(view: 'createAdmin')
    }

    @Secured(['ROLE_ADMIN'])
    def save() {
        def userInstance = new User(params)

        userInstance.username = params.cityId
        userInstance.creator = User.get(springSecurityService.currentUser.id)
        userInstance.created = new Date()
        userInstance.ip = request.getRemoteAddr()
        userInstance.enabled = true


        if(params.password2 != params.password){
            userInstance.errors.rejectValue('password', 'กรอกรหัสผ่าน 2 ครั้งไม่ตรงกัน')
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        UserRole.create(userInstance,Role.get(params.long('role')),true)
        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def saveAdmin() {
        if(User.count() == 0){
            def userInstance = new User(params)

            userInstance.username = params.cityId
            userInstance.created = new Date()
            userInstance.ip = request.getRemoteAddr()
            userInstance.enabled = true


            if(params.password2 != params.password){
                userInstance.errors.rejectValue('password', 'กรอกรหัสผ่าน 2 ครั้งไม่ตรงกัน')
                render(view: "createAdmin", model: [userInstance: userInstance])
                return
            }

            if (!userInstance.save(flush: true)) {
                render(view: "createAdmin", model: [userInstance: userInstance])
                return
            }

            UserRole.create(userInstance,Role.findByAuthority('ROLE_ADMIN'),true)
            flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
            redirect(action: "show", id: userInstance.id)
        }else{
            redirect(url: '/')
        }
    }

    @Secured(['ROLE_ADMIN'])
    def show() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }


        [userInstance: userInstance]
    }

    @Secured(['ROLE_USER','ROLE_ADMIN'])
    def me() {
        def userInstance = User.get(springSecurityService.currentUser.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def changePassword(){
        def userInstance = User.get(params.id)
        [userInstance: userInstance]
    }



    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def edit() {
        def userInstance = User.get(params.id)




        // User can edit just their profile
        if(springSecurityService.authentication.authorities.find { it.authority == 'ROLE_USER'}){
               if(userInstance.id != springSecurityService.currentUser.id){
                   System.out.println(params.id +" "+springSecurityService.currentUser.id)
                   def targetUri = params.targetUri ?: "/"
                   redirect(uri: targetUri)
                   return
               }
        }


        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }


        [userInstance: userInstance]
    }

    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def updatePassword() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }



        if(params.password2 != params.password){
            userInstance.errors.rejectValue('password', 'กรอกรหัสผ่าน 2 ครั้งไม่ตรงกัน')
            render(view: "changePassword", model: [userInstance: userInstance])
            return
        }



        if(userInstance.password != springSecurityService.encodePassword(params.oldPassword)){
            userInstance.errors.rejectValue('password', 'รหัสผ่านเก่าไม่ถูกต้อง')
            render(view: "changePassword", model: [userInstance: userInstance])
            return
        }

        userInstance.password = params.password

        if (!userInstance.save(flush: true)) {
            render(view: "me", model: [userInstance: userInstance])
            return
        }

        springSecurityService.reauthenticate(userInstance.username, userInstance.password)

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "changePassword", id: userInstance.id)
    }

    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def update() {



        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            if(springSecurityService.authentication.authorities.find { it.authority == 'ROLE_USER'})
                redirect(action: "me")
            else
                redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'user.label', default: 'User')] as Object[],
                        "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        UserRole.removeAll(userInstance)
        UserRole.create(userInstance, Role.get(params.long('role')), true)

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])

        if(SpringSecurityUtils.ifAnyGranted('ROLE_USER')) {
            springSecurityService.reauthenticate(userInstance.username, userInstance.password)
            redirect(action: "me")
        } else {
            redirect(action: "show", id: userInstance.id)
        }

    }

    @Secured(['ROLE_ADMIN'])
    def delete() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        try {

            UserRole.removeAll(userInstance)
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
