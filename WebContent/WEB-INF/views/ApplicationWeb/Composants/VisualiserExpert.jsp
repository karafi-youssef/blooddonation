<%@page import="java.util.ArrayList"%>
<%@page import="models.Personne"%>
<%@page import="services.ServicePersonne"%>
<% 
int idexpert = Integer.parseInt(request.getParameter("idExpert"));
Personne Expert = ServicePersonne.ChercherPersonneViaId(idexpert); 

 %>
  <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Experts</a></li>
                   <li class="active"> Visualiser</li>
                </ol>
            </div>

 
  <!-- Masked Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                      
                        <div class="body">
                            <div class="demo-masked-input">
                                <div class="row clearfix">
                                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" >
	                                    <img class="img-responsive thumbnail" src="./Ressources/images/ApplicationWeb/Profil/<%=Expert.getProfil().getUrl_image()%>" style="height: 320px;">
                                	</div>
                                    <div class="col-md-3">
                                        <b>Nom</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">account_circle</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getNom_personne()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <b>Prenom</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">perm_identity</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getPrenom_personne()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Email</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">mail_outline</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getLogin_personne()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Tele</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">phone</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getTel_personne()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Date de naissance</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getDate_naissance()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <b>CIN</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">credit_card</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getCin_personne()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Adresse</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">location_on</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=Expert.getAdresse_personne()%></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Masked Input -->
	</div>
</section>