<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/login_normalize.css" />
<link rel="stylesheet" type="text/css" href="css/login_demo.css" />
<link rel="stylesheet" type="text/css" href="css/login_component.css" />
<link rel="stylesheet" type="text/css" href="css/login_content.css" />
<script src="js/login_modernizr.custom.js"></script>
</head>
<body>
	<div class="container" style="height:640px;padding-top:60px">
		<section>
			<p><strong>Login in or Sign up right now!</strong>
			</p>
			<div class="mockup-content">
				<p>Pea horseradish azuki bean lettuce avocado asparagus okra.</p>
				<div
					class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
					<button type="button">Login</button>
					<div class="morph-content">
						<div>
							<div class="content-style-form content-style-form-1">
								<span class="icon icon-close">Close the dialog</span>
								<h2>Login</h2>
								<!--<form action="login">
										<p><label>Username</label><input type="text" name="username"/></p>
										<p><label>Password</label><input type="password" name="password"/></p>
										<p><button type="submit">Login</button></p>
									</form>  -->
								<s:form action="login">
									<p>
										<s:textfield name="user.username" label="Username"></s:textfield>
									</p>
									<p>
										<s:password name="user.password" label="Password"></s:password>
									</p>
									<p>
										<s:submit value="Login"
											style="display: block;margin-top: 2.5em;padding: 1.5em;width: 100%;border: none;
											background: #e75854;color: #f9f6e5;text-transform: uppercase;letter-spacing: 1px;
											font-weight: 800;font-size: 1.25em;"></s:submit>
									</p>
								</s:form>
							</div>
						</div>
					</div>
				</div>
				<!-- morph-button -->
				<strong class="joiner">or</strong>
				<div
					class="morph-button morph-button-modal morph-button-modal-3 morph-button-fixed">
					<button type="button">Signup</button>
					<div class="morph-content">
						<div>
							<div class="content-style-form content-style-form-2">
								<span class="icon icon-close">Close the dialog</span>
								<h2>Sign Up</h2>
								<form>
									<p>
										<label>Email</label><input type="text" />
									</p>
									<p>
										<label>Password</label><input type="password" />
									</p>
									<p>
										<label>Repeat Password</label><input type="password" />
									</p>
									<p>
										<a style="display: block;margin-top: 2.5em;padding: 1.5em;width: 100%;border: none;
											background: #e75854;color: #f9f6e5;text-transform: uppercase;letter-spacing: 1px;
											font-weight: 800;font-size: 1.25em;" href="">Sign Up</a>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- morph-button -->
				<p>Kohlrabi radish okra azuki bean corn fava bean mustard
					tigernut juccama green bean celtuce collard greens avocado
					quandong.</p>
			</div>
			<!-- /form-mockup -->
		</section>
	</div>
	<!-- /container -->
	<script src="js/login_classie.js"></script>
	<script src="js/login_uiMorphingButton_fixed.js"></script>
	<script>
		(function() {
			var docElem = window.document.documentElement, didScroll, scrollPosition;

			// trick to prevent scrolling when opening/closing button
			function noScrollFn() {
				window.scrollTo(scrollPosition ? scrollPosition.x : 0,
						scrollPosition ? scrollPosition.y : 0);
			}

			function noScroll() {
				window.removeEventListener('scroll', scrollHandler);
				window.addEventListener('scroll', noScrollFn);
			}

			function scrollFn() {
				window.addEventListener('scroll', scrollHandler);
			}

			function canScroll() {
				window.removeEventListener('scroll', noScrollFn);
				scrollFn();
			}

			function scrollHandler() {
				if (!didScroll) {
					didScroll = true;
					setTimeout(function() {
						scrollPage();
					}, 60);
				}
			}
			;

			function scrollPage() {
				scrollPosition = {
					x : window.pageXOffset || docElem.scrollLeft,
					y : window.pageYOffset || docElem.scrollTop
				};
				didScroll = false;
			}
			;

			scrollFn();

			[].slice.call(document.querySelectorAll('.morph-button')).forEach(
					function(bttn) {
						new UIMorphingButton(bttn, {
							closeEl : '.icon-close',
							onBeforeOpen : function() {
								// don't allow to scroll
								noScroll();
							},
							onAfterOpen : function() {
								// can scroll again
								canScroll();
							},
							onBeforeClose : function() {
								// don't allow to scroll
								noScroll();
							},
							onAfterClose : function() {
								// can scroll again
								canScroll();
							}
						});
					});

			// for demo purposes only
			[].slice.call(document.querySelectorAll('form button')).forEach(
					function(bttn) {
						bttn.addEventListener('click', function(ev) {
							ev.preventDefault();
						});
					});
		})();
	</script>
</body>
</html>