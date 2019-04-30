<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- Brand and toggle get grouped for better mobile display -->

                <nav class="navbar navbar-expand-lg navbar-light bg-info">
                    <p class="navbar-brand text-white bg-info mb-0">Animal Adlister</p>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse text-white bg-info" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdownMenuLink"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${sessionScope.user.username}
                                </a>

                                <div class="dropdown-menu text-white bg-info" aria-labelledby="navbarDropdownMenuLink">

                                    <c:if test="${user == null}">
                                            <a class="dropdown-item text-white" href="/register">Register <span
                                                    class="sr-only">(current)</span></a>
                                            <a class="dropdown-item text-white" href="/login">Sign In <span class="sr-only">
                                                (current)</span></a>
                                    </c:if>
                                                        <a class="dropdown-item text-white" href="/ads">View Ads</a>
                                    <c:if test="${user != null}">
                                                        <a class="dropdown-item text-white" href="/ads/create">Create Ad</a>
                                                        <a class="dropdown-item text-white" href="/userAds">My Account</a>
                                        <a class="dropdown-item text-white" href="/logout">Logout</a>
                                    </c:if>


                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="/ads">Search</a>
                                    <a class="dropdown-item" href="/ads/create">Post</a>
                                    <a class="dropdown-item" href="/userAds?edit=0&update=0">Manage Ads</a>
                                    <a class="dropdown-item" href="/logout">Logout</a>

                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
