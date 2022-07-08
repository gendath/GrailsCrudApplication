package rewards

import grails.testing.mixin.integration.Integration
import grails.testing.spock.OnceBefore
import io.micronaut.http.HttpRequest
import spock.lang.AutoCleanup
import spock.lang.Shared
import spock.lang.Specification

import java.net.http.HttpClient

@Integration
class HealthSpec extends Specification {

    @Shared
    @AutoCleanup
    HttpClient client

    @OnceBefore
    void init() {
        String baseUrl = "http://localhost:$serverPort"
        client = HttpClient.create(new URL(baseUrl))
    }

    void "health responds OK"()  {
        when:
        Map m = client.toBlocking().retrieve(HttpRequest.GET("/health"), Map)

        then:
        m
        m.containsKey("status")
        m.get("status") ==  "UP"
    }
}