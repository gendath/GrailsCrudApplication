package rewards

class IntentoryController {

    def index() {
        render "Main"
    }

    def list(){
        def allProducts = Product.list()

        [allProducts:allProducts]
    }
}
