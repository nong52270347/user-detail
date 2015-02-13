package user.detail

class User {
    static searchable = true
    enum Gender{
        MALE,
        FEMALE


    }

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

    String nameTitle
    String name
    String surname
    Gender gender
    String cityId
    String milId
    String division
    String section
    String position
    String departmentId
    String abbreviationId
    String email
    String milPhone
    String phone
    String mobilePhone

    User creator
    Date created
    String ip
    User updator
    Date updated

	static constraints = {
		 username blank: false, unique: true
		 password password: true, blank: false
         nameTitle blank: false, nullable: false
         name     blank: false, nullable: false
         surname  blank: false, nullable: false
         gender blank: false, nullable: false
         cityId blank: false, nullable: false, size: 4..13
         milId  blank: false, nullable: false, unique: true,size: 10..10
         division blank: false, nullable: true
         section    blank: false, nullable: true
         position  blank: false, nullable: true
         departmentId  blank: false, nullable: false
         abbreviationId   blank: false, nullable: true
         email email: true, blank: false, nullable: true
         milPhone blank: false, nullable: true
         phone    blank: false, nullable: true
         mobilePhone  blank: false, nullable: true

         creator  blank: false, nullable: true, display: false
         created  blank: false, nullable: false, display: false
         ip      blank: false, nullable: false, display: false
         updator   blank: false, nullable: true, display: false
         updated   blank: false, nullable: true, display: false

        enabled display: false
        accountExpired display: false
        accountLocked display: false
        passwordExpired display: false



	}

	static mapping = {
        table "userlist"
        //table "view_mtc"
		password column: '`password`'
        name column: 'firstname'
        username column: 'name'
        id column: 'id'
	}


	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}



	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
