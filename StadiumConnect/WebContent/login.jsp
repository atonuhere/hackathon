<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib prefix="s" uri="/struts-tags"%>
 <section class="intro1">
		<div class="intro-body1">
			<div class="container">
				
				<div class="col-md-6  transparent pull-right" style="background:transparent; background-color:rgba(0, 0, 0, 0.5); height:200px; text-align:center; padding-top:15px;color:white !important;">
				<b>Please Enter your credentials below</b>
		
						<s:form action="signIn" method="post">
		
							<br />
							<div class="input-prepend">
								<span class="add-on"><i class="icon-user"
									style="color: black;"></i></span>
								<s:textfield name="userName" theme="simple"
									placeholder="Please enter username" cssClass="input-xlarge text-black" />
							</div>
							<br />
							<div class="input-prepend">
								<span class="add-on"><i class="icon-key"
									style="color: black;"></i></span>
								<s:password name="password" theme="simple"
									placeholder="Please enter password" cssClass="input-xlarge text-black" />
							</div>
							<br />
							<s:submit name="commandButton" id="mysubmit" value="LOGIN"
								cssClass="btn btn-primary" theme="simple"/>
								
								 
							</a>
		
							<s:if test="hasActionErrors()">
								<s:iterator value="actionErrors">
		
									<div class="span10 offset1" align="center">
										<br />
										<div class="alert alert-error">
											<button type="button" class="close" data-dismiss="alert">&times;</button>
											<s:property />
										</div>
									</div>
		
								</s:iterator>
							</s:if>
						</s:form>
					</div>
				
				</div>
				
			</div>
		</section>				
