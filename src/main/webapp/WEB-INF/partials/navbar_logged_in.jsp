<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="nav navbar-nav navbar-left">
            <div class="mt-2 d-inline">

            </div>
            <div class="d-inline pl-4">
                <a href="/ads">Browse</a>
            </div>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/profile">${sessionScope.user.username}</a></li>
            <li><a href="/logout">Log out</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>