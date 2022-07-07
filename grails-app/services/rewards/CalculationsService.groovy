package rewards

import grails.gorm.transactions.Transactional

@Transactional
class CalculationsService {

    def welcome(params) {
        def first = params.id
        def points = params.points.toInteger()
        def message = ""
        switch(points){
            case 5:
                points-=5
                message="Today is ${ new GregorianCalendar().getTime()}<br>Hey there ${first.capitalize()}! Your drink is on us!!<br>Your new point total is $points."
                break
            case 4:
                message = "Today is ${ new GregorianCalendar().getTime()}<br>Hey there ${first.capitalize()}! Your next drink is on us!!"
                break
            default:
                message = "Today is ${ new GregorianCalendar().getTime()}<br>Hey there ${first.capitalize()}! You have $points points!"

        }
        return message

    }

    def Customer getTotalPoints(Customer customer) {
        def totalPointsCalculated = 0
        customer.getAwards().each {
            totalPointsCalculated+=it.points
        }
        customer.totalPoints = totalPointsCalculated
        return customer
    }
}
