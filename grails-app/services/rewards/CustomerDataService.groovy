package rewards

import grails.gorm.transactions.Transactional

@Transactional
class CustomerDataService {

    def serviceMethod() {

    }

    def processCheckin(Customer customer) {
        def totalPointsCalculated = 0
        def welcomeMessage=""
        def customerInstance = Customer.findByPhone(customer.phone)
        if(!customerInstance){
            customerInstance = customer
            customerInstance.firstName = "Customer"
            welcomeMessage = "Hey there ${customerInstance.firstName.capitalize()}! Thanks for signing up! You now have 1 rewards point!"
            customerInstance.addToAwards(new Award(awardDate: new Date(),type:"Purchase",points:1))
            customerInstance.totalPoints =1
            customerInstance.save()
            return [customerInstance,welcomeMessage]
        }
            switch(customerInstance.totalPoints){
                case 5:
                    welcomeMessage="Hey there ${customerInstance.firstName.capitalize()}! Your drink is on us!!"
                    break
                case 4:
                    welcomeMessage = "Hey there ${customerInstance.firstName.capitalize()}. Your next drink is on us!!"
                    break
                default:
                    welcomeMessage = "Hey there ${customerInstance.firstName.capitalize()}! You have ${customerInstance.totalPoints+1} points!"

            }




        if(customerInstance.totalPoints<5){
            customerInstance.addToAwards(new Award(awardDate: new Date(),type:"Purchase",points:1))
        } else{
            customerInstance.addToAwards(new Award(awardDate: new Date(),type:"Reward",points:-5))
        }



        customerInstance.getAwards().each {
            totalPointsCalculated+=it.points
        }
        customerInstance.totalPoints = totalPointsCalculated





        customerInstance.save()
        return [customerInstance,welcomeMessage]

    }

    def processUpdate(Customer customer){
        return customer.save()
    }
}
