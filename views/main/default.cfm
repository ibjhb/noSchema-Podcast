<cfset rc.title = "Home" />	<!--- set a variable to be used in a layout --->
<div class="container">
<div class="row">
    <div class="span12">
        <h2>People</h2>
    </div>
</div>

<div class="row">
    <div class="offset2 span5">
        <img src='/_src/img/wbm-ibjhb.jpg' alt='James Brown' />
        <div class="pagination-centered socialLink">
            <a href="http://twitter.com/ibjhb/">@ibjhb</a>
        </div>
    </div>
    <div class="span5">
        <img src='/_src/img/wbm-aaron.jpg' alt='Aaron Greenlee' />
        <div class="pagination-centered socialLink">
            <a href='http://twitter.com/aarongreenlee/'>@aarongreenlee</a>
        </div>
    </div>
</div>

<cfoutput>
	#view('podcast/default')#
</cfoutput>
</div>