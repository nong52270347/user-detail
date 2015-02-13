package user.detail

class Role {

	String authority
    String label

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
        label blank: false, nullable: false
	}
}
