<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <asset:image src="banner.png" alt="Banner"/>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-5 pt-5 offset-1">
            <h4>Welcome back, Perry!</h4>

            <p>You have 3 points!</p>


        </div>

        <div class="col-sm-6">
            <g:textField class="form-control" placeholder="Phone Number" name="phoneNumber" value="${phoneNumber}" />

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
                    <input name="pad" value="Del" type="button" class="btn btn-danger btn-lg btn-block" onclick="clearPhone()" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="0" type="button" class="btn btn-primary btn-lg btn-block" onclick="padkey(this.value)" />
                </div>
                <div class="col-sm-4">
                    <input name="pad" value="Go" type="button" class="btn btn-success btn-lg btn-block" />
                </div>

            </div>





        </div>
    </div>


</div>
<!-- pad button script -->
<script>
    function padkey(num) {
        let txt=document.getElementById("phoneNumber").value;
        txt=txt + num;
        document.getElementById("phoneNumber").value=txt;
    }
    function clearPhone(){
        document.getElementById("phoneNumber").value="";

    }
</script>