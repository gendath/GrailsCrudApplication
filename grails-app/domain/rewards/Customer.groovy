package rewards

class Customer {
    String firstName
    String lastName
    Long phoneNumber
    String email
    Integer totalPoints
    static hasMany = [awards:Award,orders:OnlineOrder]

    static constraints = {
        phoneNumber()
        firstName(nullable: true)
        lastName(nullable: true)
        email(nullable: true, email: true)
        totalPoints(nullable: true, max: 10, min:0)
    }
}
