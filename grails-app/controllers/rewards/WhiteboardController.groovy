package rewards

class WhiteboardController {
    def calculationsService

    def index() { render "hello"}

    def variables(){
        def myTotal = 5
        myTotal++
        render("total:\t\t\t" +myTotal + "<br>")
        render(myTotal.class)

        def firstName = "Perry"
        firstName += 1
        render("<br>" + firstName + "<br>")
        render(firstName.class)
        render("<br>")

        def today = new GregorianCalendar()

        render(today.getTime())
        render("<br>")
        render(today.class)
        render("<br>")
        today.add(today.DATE,365)
        render(today.getTime())
        render("<br>")
    }


    def strings(){
        def message = calculationsService.welcome(params)
        render message
    }
}
