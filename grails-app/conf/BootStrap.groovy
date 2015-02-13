import user.detail.Role
import user.detail.User
import user.detail.UserRole

class BootStrap {

    def init = { servletContext ->
        ['ROLE_ADMIN': 'ผู้ดูแลระบบ', 'ROLE_USER': 'ผู้ใช้งานทั่วไป'].each { key, value ->
            if (!Role.findByAuthority(key))
                new Role(authority: key, label: value).save(flush: true)
        }

        if (!User.findByUsername('admin')) {
            def adminUser = new User(username: 'admin',
                    enabled: true,
                    password: 'adm#123',
                    nameTitle: 'admin',
                    name: 'admin',
                    surname: 'admin',
                    gender: User.Gender.MALE,
                    cityId: '0000000000000',
                    milId: '0000000000',
                    division: 'admin',
                    section: 'admin',
                    position: 'admin',
                    departmentId: 'admin',
                    abbreviationId: 'admin',
                    email: 'admin@admin.com',
                    created: new Date(),
                    ip: "0.0.0.0"

            )

            adminUser.save(flush: true)
            UserRole.create(adminUser,Role.findByAuthority('ROLE_ADMIN'),true)
        }

//        assert User.count() == 1
//        assert Role.count() == 2
//        assert UserRole.count() == 1

    }
    def destroy = {
    }
}
