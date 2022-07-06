package rewards

class BootStrap {

    def init = { servletContext ->
        new Product(name:"Breakfast Blend",sku:"BB01",price: 14.99).save()
        new Product(name:"Classic Kona",sku:"CK01",price: 16.99).save()
        new Product(name:"Morning Joe",sku:"JO01",price: 14.99).save()
        new Product(name:"Espresso Roast",sku:"ER01",price: 10.99).save()
    }
    def destroy = {
    }
}
