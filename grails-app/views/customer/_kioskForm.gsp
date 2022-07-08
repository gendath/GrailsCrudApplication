<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <asset:image src="banner.png" alt="Banner"/>
        </div>
    </div>
    <hr>
    <div class="row mt-5">
        <div class="col-lg-5 pt-5 offset-lg-1 col-md-12">
            <h4>${welcomeMessage}</h4>

            <a href='/customer/profile/${customerInstance?.phone}'>${customerInstance?"Edit Your Profile":"" }</a>



        </div>

        <div class="col-lg-6 col-md-12">
            <g:textField class="form-control" placeholder="Phone Number" name="phone" value="${customerInstance?.phone}" />

            <div class="row">
                <h3>&nbsp;</h3>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <input name="pad" value="1" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="2" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="3" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>

            </div>


            <div class="row">
                <h3>&nbsp;</h3>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <input name="pad" value="4" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="5" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="6" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>

            </div>


            <div class="row">
                <h3>&nbsp;</h3>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <input name="pad" value="7" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="8" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="9" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>

            </div>


            <div class="row">
                <h3>&nbsp;</h3>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <g:link  class="btn btn-danger btn-lg btn-block" action="checkin">Del</g:link>
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="0" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <g:submitButton name="pad" value="Go"  class="btn btn-success btn-lg btn-block" />
                </div>

            </div>





        </div>
    </div>


</div>
<!-- pad button script -->
<script>
    function padkey(num) {
        let txt=document.getElementById("phone").value;
        txt=txt + num;
        document.getElementById("phone").value=txt;
    }
    function clearPhone(){
        document.getElementById("phone").value="";

    }
</script>