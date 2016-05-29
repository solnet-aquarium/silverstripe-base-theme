<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
		<div class="content">$Content


      <h2>Form components</h2>

      

        <form>
            <fieldset>
                <legend>Text fields</legend>
                <label for="std-txt">Standard text field</label>
                <input id="std-txt" type="text" placeholder="Your placeholder">

                <label for="std-disabled-txt">Standard disabled text field</label>
                <input id="std-disabled-txt" type="text" disabled placeholder="Your placeholder">
            </fieldset>
            <h3>Types for keyboards</h3>
            <p>text, email, number, tel, url, date</p>
        </form>

        <form>
            <fieldset>
                <legend>Select fields</legend>
                
                <label for="selectbasic">Standard select field</label>
                <div class="select-wrapper"> <%-- Wrapper to allow styling of the select. The background and arrow are applied to this level --%>
                    <select id="selectbasic" name="selectbasic" class="">
                      <option value="1">Option one</option>
                      <option value="2">Option two</option>
                    </select>
                </div>

                <label for="selectbasic-disabled">Standard disabled select field</label>
                <div class="select-wrapper"> <%-- Wrapper to allow styling of the select. The background and arrow are applied to this level --%>
                    <select id="selectbasic-disabled" name="selectbasic" class="" disabled>
                      <option value="1">Option one</option>
                      <option value="2">Option two</option>
                    </select>
                </div>

                <label for="select-multi">Multi select field</label>
                <select id="select-multi" name="selectmultiple" class="" multiple="multiple">
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                </select>

                <label for="select-multi-disabled">Disabled multi select field</label>
                <select id="select-multi-disabled" name="selectmultiple" class="" multiple="multiple" disabled>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                </select>
            </fieldset>
            
            <fieldset>
                <legend>Upload field</legend>
            </fieldset>
        </form>





    </div>
	</article>
		$CommentsForm
		$Form
</div>