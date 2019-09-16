<!doctype html>
<html class="" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <link href="images/apple-touch-icon.png" type="images/x-icon" rel="shortcut icon">
    <!-- All css files are included here. -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/core.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!-- customizer style css -->
    <link rel="stylesheet" href="css/style-customizer.css">
    <link href="#" data-style="styles" rel="stylesheet">
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  
    
    
    <!-- Pre Loader
	============================================ -->
	<div class="preloader">
		<div class="loading-center">
			<div class="loading-center-absolute">
				<div class="object object_one"></div>
				<div class="object object_two"></div>
				<div class="object object_three"></div>
			</div>
		</div>
	</div>
  <!-- Body main wrapper start -->
    <div class="wrapper white-bg">
    	<!--Header section start-->
    	<div class="header sticky-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-3 col-xs-6">
                    <div class="logo"><a href="/profile"><img src="images/logo/personal.png" alt=""></a></div>
                </div>
                <div class="col-md-10 col-sm-9 col-xs-6">
                    <div class="mgea-full-width">
                        <div class="header-right">
                            <div class="header-menu hidden-sm hidden-xs">
                                <div class="menu">
                                    <ul>
                                        <li><a href="index.html">入主中原</a></li>
                                        <li><a href="about-us.html">about</a></li>
                                        <li><a href="gallery.html">gallery</a></li>
                                        <li><a href="blog.html">blog</a></li>
                                        <li><a href="contact-us.html">客服信息</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="search">
                                <div class="search-inner">
                                    <a href="#"><i class="mdi mdi-magnify"></i></a>
                                </div>
                            </div>	
                        </div>
                        <div class="search-inside" style="display: none;">
                            <a href="#" class="search-close"><i class="mdi mdi-close"></i></a>
                            <div class="search-overlay"></div>
                            <div class="searchbar-inner">
                                <div class="search">
                                    <form action="#">
                                        <input type="search" placeholder="Search here"><button type="submit"><i class="mdi mdi-magnify"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile menu start -->
        <div class="mobile-menu-area hidden-lg hidden-md">
            <div class="container">
                <div class="col-md-12">
                    <nav id="dropdown">
                        <ul>
                            <li><a href="index.html">入主中原</a></li>
							<li><a href="about-us.html">关于我们</a></li>
							<li><a href="gallery.html">美食预览</a></li>
							<li><a href="blog.html">美食博客</a></li>
							<li><a href="contact-us.html">客服信息</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Mobile menu end -->
    	</div>
       <!--Header section end-->         
      
        <!--popular dises start-->
        <div class="popular-dishes">
            <div class="bg-img-2 ptb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="section-title text-center grey_bg">
                                <h2>美食之旅-最受欢迎的晚餐</h2>
                                <p>天下熙熙，利来利往,而内核之士，素有忠诚，多有担待....</p>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="dises-list">                                 
                                    <#list bestsellerFood.othersRegularDishList  as food>
                                    	 <#if (food_index)%3 == 0>
                                    	 	 <div class="dises-show text-center">
    									 </#if>	
    									 <div class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="single-disesh">
                                                <div class="disesh-img">
                                                    <a href="#"><img src="images/dish/${(food_index)%3+1}.png" alt=""></a>
                                                </div>
                                                <div class="disesh-desc pt-50">
                                                    <h3><a href="">${food.name}</a></h3>
                                                    <p id="${food.id}" class="price">${food.priceString}</p>
                                                </div>
                                            </div>
                                        </div>
                                    	 <#if (food_index-2)%3 == 0>
                                    	 	 </div>
    									 </#if>	
                                    </#list>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--popular dises end-->

        
        <!--Food menu section start-->
        <div class="food-menu white-bg ptb-100">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-8 col-md-offset-2">
        				<div class="section-title mb-50 text-center white_bg">
        					<h2 class="mb-50">美食甄选</h2>
        					<p>我们尊重食物本来的味道</p>
        				</div>
        			</div>
        		</div>
        		<div class="row">
        			<div class="food-item-tab home-page">
        				<div class="col-md-12">
        					<div class="foode-item-box fix mb-60">
        						<ul class="nav" role="tablist">
                                    <li role="presentation" class="active"><a aria-controls="tab1" href="#tab1" data-toggle="tab">my favorite</a></li>
									<#list restuarants.restaurantList as res>
										<li role="presentation"><a href="#tab${res_index+2}" aria-controls="tab${res_index+2}">${res.name}</a></li>
									</#list>
								</ul>
        					</div>
        				</div>
						<div class="food-item-desc">
							<div class="col-md-12">
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane" id="tab1">
										<div class="row">
											<#list bestsellerFood.myRegularDishList as favoriateFood>
													<div class="col-md-6 col-sm-6 col-xs-12">
												<#if favoriateFood_index < (bestsellerFood.myRegularDishList?size)/2>
														<div class="fooder-menu-description float_left">
												<#else>
														<div class="fooder-menu-description float_right">
												</#if>
															<div class="single-food-item mb-30">
																<div class="single-food-inner">
																	<div class="food-img">
																		<img class="imgsrc"  alt="Toker Love">
																	</div>
																	<div class="single-food-item-desc">
																		<div class="single-food-item-title">
																			<h2>${favoriateFood.name}</h2>
																			<p>${favoriateFood.restaurant.name} /<p class="${favoriateFood.id}">任务车</p> / 一键购</p>
																		</div>
																		<div class="single-food-price">
																			<p>favoriateFood.priceString</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
											</#list>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="tab2">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_left">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/4.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/3.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/2.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/01.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_right">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/8.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/7.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/5.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/6.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="tab3">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_left">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/01.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/2.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/3.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/4.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_right">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/5.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/6.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/7.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/8.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane active" id="tab4">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_left">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/01.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/2.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/3.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/4.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_right">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/5.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/6.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/7.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/8.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="tab5">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_left">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/01.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/4.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/2.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/3.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_right">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/8.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/7.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/6.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/5.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="tab6">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_left">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/01.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/2.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/3.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/4.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_right">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/5.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/6.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/7.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/8.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="tab7">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_left">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/4.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/01.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/2.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/3.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="fooder-menu-description float_right">
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/8.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/5.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item mb-30">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/7.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
													<div class="single-food-item">
														<div class="single-food-inner">
															<div class="food-img">
																<img src="images/food/6.png" alt="">
															</div>
															<div class="single-food-item-desc">
																<div class="single-food-item-title">
																	<h2><a href="#">Fried Potatoes With Garlic</a></h2>
																	<p>Mushroom / Garlic / Veggies</p>
																</div>
																<div class="single-food-price">
																	<p>$100</p>
																</div>
															</div>	
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
        			</div>
        		</div>
        	</div>
        </div>
        <!--Food menu section end-->
        
        <!--Our gallery start-->
        <div class="our-gallery">
            <div class="bg-img-2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="section-title grey_bg mb-50 text-center">
                                <h2 class="mb-50">our gallery</h2>
                                <p>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim nostrud exercitation ullamco laboris nisi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gallery-menu fix text-center mb-60">
                                <ul>
                                    <li class="active" data-filter="*">all</li>
                                    <li data-filter=".desert">desert</li>
                                    <li data-filter=".coffee">coffee</li>
                                    <li data-filter=".drink">drink</li>
                                    <li data-filter=".catering">catering services</li>
                                </ul>
                            </div>
                            <div class="gallery-item-box row">
                                <div class="col-md-4 col-sm-6 col-xs-12 gallery-item desert drink mb-30">
                                    <div class="single-item-gallery">
                                        <a href="images/gallery/1.jpg">
                                            <span class="plus"><i class="mdi mdi-plus"></i></span>
                                        </a>
                                        <img src="images/gallery/1.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 gallery-item coffee catering mb-30">
                                    <div class="single-item-gallery">
                                        <a href="images/gallery/2.jpg">
                                            <span class="plus"><i class="mdi mdi-plus"></i></span>
                                        </a>
                                        <img src="images/gallery/2.jpg" alt="">
                                    </div>
                                </div> 
                                <div class="col-md-4 col-sm-6 col-xs-12 gallery-item desert drink mb-30">
                                    <div class="single-item-gallery">
                                        <a href="images/gallery/3.jpg">
                                            <span class="plus"><i class="mdi mdi-plus"></i></span>
                                        </a>	
                                        <img src="images/gallery/3.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 gallery-item coffee catering mb-30">
                                    <div class="single-item-gallery">
                                        <a href="images/gallery/3.jpg">
                                            <span class="plus"><i class="mdi mdi-plus"></i></span>
                                        </a>
                                        <img src="images/gallery/4.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 gallery-item coffee drink catering mb-30">
                                    <div class="single-item-gallery">
                                        <a href="images/gallery/5.jpg">
                                            <span class="plus"><i class="mdi mdi-plus"></i></span>
                                        </a>
                                        <img src="images/gallery/5.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 gallery-item desert catering mb-30">
                                    <div class="single-item-gallery">
                                        <a href="images/gallery/6.jpg">
                                            <span class="plus"><i class="mdi mdi-plus"></i></span>
                                        </a>
                                        <img src="images/gallery/6.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
        	</div>
        </div>
        <!--Our gallery end-->
       <!--reservation section start-->
        <div class="reservation ptb-100 white-bg">
            <div class="bg-img-1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="section-title white_bg mb-50 text-center">
                                <h2 class="mb-50">Make A Reservation</h2>
                                <p>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim nostrud exercitation ullamco laboris nisi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="reserv-section-inner">
                                <div class="bg-img"></div>
                                <div class="reserve-form">
                                    <h3 class="reserv-title mb-60">Reservation Form</h3>
                                    <form action="#">
                                        <div class="reserve-form-top">
                                            <input type="text" placeholder="FUll name">
                                            <input type="text" placeholder="Email address">
                                            <input type="text" placeholder="Mobile number">
                                            <div class="date-time">
                                                <select>
                                                    <option selected>Select Date And Time</option>
                                                    <option>26Dec-10.00pm</option>
                                                    <option>2Jan-10.00pm</option>
                                                    <option>17Dec-10.00pm</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="reserve-submit mt-40">
                                            <button type="submit">
                                                submit
                                            </button>
                                        </div>
                                    </form>	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <!--reservation section end-->
        <!--our blog start-->
        <div class="our-blog grey-bg ptb-100">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-8 col-md-offset-2">
						<div class="section-title grey_bg mb-50 text-center">
							<h2 class="mb-50">Our blog</h2>
							<p>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim nostrud exercitation ullamco laboris nisi.</p>
						</div>
					</div>
        		</div>
        		<div class="blog-details">
        			<div class="row">
        				<div class="col-md-4 col-sm-6 col-xs-12">
        					<div class="single-blog">
        						<div class="blog-thumbnail">
        							<img src="images/blog/10.jpg" alt="">
        						</div>
        						<div class="blog-desc">
        						    <div class="publish-date">
        								<p>13<span>Mar</span></p>
        							</div>
        							<div class="blog-title">
        							    <h3><a href="#">Lorem Ipsum is simply dummy</a></h3>
        							</div>
        						</div>
        					</div>
        				</div>
        				<div class="col-md-4 col-sm-6 col-xs-12">
        					<div class="single-blog blog-video">
        						<div class="blog-img">
        							<div class="blog-thumbnail">
        							    <img src="images/blog/2.jpg" alt="">
        							</div>
        							<div class="blog-hover">
        							    <a href=""><i class="mdi mdi-play"></i></a>	
        							</div>
        						</div>
        				    </div>
        				</div>
        				<div class="col-md-4 hidden-sm col-xs-12">
        					<div class="single-blog">
        						<div class="blog-thumbnail">
        							<img src="images/blog/3.jpg" alt="">
        						</div>
        						<div class="blog-desc">
        						    <div class="publish-date">
        								<p>13<span>Mar</span></p>
        							</div>
        							<div class="blog-title">
        							    <h3><a href="#">Lorem Ipsum is simply dummy</a></h3>
        							</div>
        						</div>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        <!--our blog end-->
        <!--Tstimonial section start-->
        <div class="testimonial ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
						<div class="section-title white_bg mb-50 text-center">
							<h2 class="mb-50">Our Client Loves</h2>
							<p>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim nostrud exercitation ullamco laboris nisi.</p>
						</div>
					</div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="testimonial-sliders">
                            <div class="row">
                                <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                                    <div class="testimonial-image-slider text-center">
                                        <div class="sin-testiImage">
                                            <img src="images/testimonial/1.jpg" alt="testimonial 1" />
                                        </div>
                                        <div class="sin-testiImage">
                                            <img src="images/testimonial/2.jpg" alt="testimonial 1" />
                                        </div>
                                        <div class="sin-testiImage">
                                            <img src="images/testimonial/1.jpg" alt="testimonial 1" />
                                        </div>
                                        <div class="sin-testiImage">
                                            <img src="images/testimonial/2.jpg" alt="testimonial 1" />
                                        </div>

                                    </div>
                                </div>
                            </div> 
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="testimonial-text-slider text-center mt-30">
                                        <div class="single-test-text">
                                            <p class="text-qoute">
                                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                            </p>
                                            <p class="test-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley </p>
                                            <div class="test-title mb-50">
                                                <h4>Sathi bhuiyan</h4>
                                                <p>Manager</p>
                                            </div>
                                        </div>
                                        <div class="single-test-text">
                                            <p class="text-qoute">
                                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                            </p>
                                            <p class="test-text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                                            <div class="test-title mb-50">
                                                <h4>Mohin patwary</h4>
                                                <p>Web Developer</p>
                                            </div>
                                        </div>
                                        <div class="single-test-text">
                                            <p class="text-qoute">
                                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                            </p>
                                            <p class="test-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley </p>
                                            <div class="test-title mb-50">
                                                <h4>Tarek aziz</h4>
                                                <p>Wordpress Developer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </div>  
                </div>
            </div>
        </div>
        <!--Tstimonial section end-->
        <!--Team brand start-->
        <div class="team-brand ptb-100 grey-bg">
            <div class="container">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-xs-12 col-sm-12">
                                <div class="team-list">
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-1.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-2.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-3.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-4.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-1.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-2.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-3.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-4.png" alt=""></a>
                                    </div>
                                    <div class="single-team">
                                        <a href="#"><img src="images/logo/team-3.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Team brand end-->
        <!--Offer section start-->
        <div class="offer-section fix">
            <div class="bg-img ptb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="offer-inner text-center">
                                <h2 class="ttle1">
                                    50% Off 
                                </h2>
                                <h2 class="ttle2">
                                    our Vegetable Soap
                                </h2>
                                <p>  Lorem ipsum  Newaz dolor sit amet, consectetur adipiscing elit. Donec aliquet dolor libero, eget loved dost venenatis maurisfinibus dictumss. Vestibulum quis elit eget neque porttitor  no amet dolor. Proin pretium purus a lorem  
                           obortis pulvinar. Integer laoreet mi id eros porta euismod. Suspendisse potenti. Nulla eros  </p>
                                <div class="order-now">
                                    <a href="#">order now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Offer section end-->
        <!--Footer section start-->
        <div class="footer">
            <div class="footer-top ptb-100 grey-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-footer">
                                <h3 class="single-footer-title">Contact us</h3>
                                <div class="single-footer-details mt-30">
                                    <p class="addresses">
                                        <strong>Address:</strong> House No 08, Ro ad No 08<br>Din Bari, Dhaka, Bangladesh
                                    </p>
                                    <p class="email">
                                       <strong> Email:</strong> Username@gmail.com<br>Damo@gmail.com
                                    </p>
                                    <p class="phon">
                                        <strong>Phone:</strong>(+660 256 24857)<br>(+660 256 24857)
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-footer">
                                <h3 class="single-footer-title">open hours</h3>
                                <div class="single-footer-details mt-30">
                                    <p>Lorem ipsum dolor sit amet,  tore latthi dimu consectetueiusmodm dost   </p>
                                    <div class="open-list">
                                        <ul>
                                            <li>Monday- Friday. . . . . . . . . . . . . <span>8 AM - 5PM</span></li>
                                            <li>Sunday. . . . . . . . . . . . . . . . . . . . . <span>12 AM - 5PM</span></li>
                                            <li>Saturday . . . . . . . . . . . . . . . . . . . . . . . . . . . <span>Close</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-footer instagram">
                                <h3 class="single-footer-title">instagram</h3>
                                <div class="single-footer-details mt-30">
                                   <ul>
                                       <li><a href="#"><img src="images/instagram/1.jpg" alt=""></a></li>
                                       <li><a href="#"><img src="images/instagram/2.jpg" alt=""></a></li>
                                       <li><a href="#"><img src="images/instagram/3.jpg" alt=""></a></li>
                                       <li><a href="#"><img src="images/instagram/4.jpg" alt=""></a></li>
                                       <li><a href="#"><img src="images/instagram/5.jpg" alt=""></a></li>
                                       <li><a href="#"><img src="images/instagram/6.jpg" alt=""></a></li>
                                   </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-footer newsletter">
                                <h3 class="single-footer-title">Newsletter</h3>
                                <div class="single-footer-details mt-30">
                                    <p>Lorem ipsum dolor sit amet,  tore latthi dimu consectetueiusmodm dost </p>
                                    <div class="newsletter-form">
                                        <form action="#">
                                            <input type="text" placeholder="Enter your email">
                                            <button type="submit">submit</button>
                                        </form>   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>
            <div class="copyright text-center ptb-20 white-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <!--Footer section end-->
    </div>
    <!-- Body main wrapper end -->

	<!-- All js plugins included in this file. -->
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/animated-headlines.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.collapse.js"></script>
    <script src="js/style-customizer.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <script src="js/toker.js"></script>
</body>

</html>
