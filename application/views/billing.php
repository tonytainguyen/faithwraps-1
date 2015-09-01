<div class="shippinginfo">
    <div class="row">
        <div class="col-md-6">
            <div class="shipping">
                <form action="/" method="post" class="form-signin">
                    <h2 class="form-signin-heading text-center">Shipping Information:</h2>
                    <label for="inputFirstName">First Name</label>
                    <input type="text" id="inputFirstName" name="first_name" class="form-control" required autofocus>
                    <label for="inputLastName">Last Name</label>
                    <input type="text" id="inputLastName" name="last_name" class="form-control" required>
                    <label for="inputAddress1">Address Line 1</label>
                    <input type="text" id="inputAddress1" name="address1" class="form-control"  required>
                    <label for="inputAddress2">Address Line 2 (Optional)</label>
                    <input type="text" id="inputAddress2" name="address2" class="form-control" >
                    <label for="inputCity">City</label>
                    <input type="text" id="inputCity" name="city" class="form-control" required>
                    <label for="inputCountry">Country</label>
                    <select name="country" id="inputCountry" class="form-control">
                        <option value="US">United States</option>
                        <option value="CANADA">Canada</option>
                        <option value="VIETNAM">Vietnam</option>
                        <option value="RUSSIA">Russia</option>
                    </select>
                    <label for="inputZip">Zip Code</label>
                    <input type="text" id="inputZip" name="zipcode" class="form-control" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="samebilling"> Same As Billing
                    </label>
                </div><!-- END OF CHECKBOX -->
                </form>
            </div><!-- END OF SHIPPING -->
        </div><!-- END OF COL-SM-6 -->
        <div class="col-md-6">
            <div class="billing">
                <form action="/" method="post" class="form-signin">
                    <h2 class="form-signin-heading text-center">Billing Information: </h2>
                    <label for="inputFirstName">First Name</label>
                    <input type="text" id="inputFirstName" name="first_name" class="form-control" required autofocus>
                    <label for="inputLastName">Last Name</label>
                    <input type="text" id="inputLastName" name="last_name" class="form-control" required>
                    <label for="inputAddress1">Address Line 1</label>
                    <input type="text" id="inputAddress1" name="address1" class="form-control"  required>
                    <label for="inputAddress2">Address Line 2 (Optional)</label>
                    <input type="text" id="inputAddress2" name="address2" class="form-control">
                    <label for="inputCity">City</label>
                    <input type="text" id="inputCity" name="city" class="form-control" required>
                    <label for="inputCountry">Country</label>
                    <select name="country" id="inputCountry" class="form-control">
                        <option value="US">United States</option>
                        <option value="CANADA">Canada</option>
                        <option value="VIETNAM">Vietnam</option>
                        <option value="RUSSIA">Russia</option>
                    </select>
                    <label for="inputZip">Zip Code</label>
                    <input type="text" id="inputZip" name="zipcode" class="form-control" required>
                </form>
            </div><!-- END OF SHIPPING -->
        </div><!-- END OF COL-SM-6 -->
        <div class="col-md-6"></div>
    </div><!-- END OF ROW -->
</div><!-- END OF SHIPPINGINFO -->

<div class="row">
    <div class="col-sm-6">
        <form class="form-horizontal" role="form">
            <fieldset>
                <legend>Payment</legend>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="card-holder-name">Name on Card</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="card-number">Card Number</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="expiry-month">Expiration Date</label>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-xs-3">
                                <select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                                    <option>Month</option>
                                    <option value="01">Jan (01)</option>
                                    <option value="02">Feb (02)</option>
                                    <option value="03">Mar (03)</option>
                                    <option value="04">Apr (04)</option>
                                    <option value="05">May (05)</option>
                                    <option value="06">June (06)</option>
                                    <option value="07">July (07)</option>
                                    <option value="08">Aug (08)</option>
                                    <option value="09">Sep (09)</option>
                                    <option value="10">Oct (10)</option>
                                    <option value="11">Nov (11)</option>
                                    <option value="12">Dec (12)</option>
                                </select>
                            </div>
                            <div class="col-xs-3">
                                <select class="form-control" name="expiry-year">
                                    <option value="13">2013</option>
                                    <option value="14">2014</option>
                                    <option value="15">2015</option>
                                    <option value="16">2016</option>
                                    <option value="17">2017</option>
                                    <option value="18">2018</option>
                                    <option value="19">2019</option>
                                    <option value="20">2020</option>
                                    <option value="21">2021</option>
                                    <option value="22">2022</option>
                                    <option value="23">2023</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="cvv">Card CVV</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="button" class="btn btn-success">Continue to Checkout</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
  