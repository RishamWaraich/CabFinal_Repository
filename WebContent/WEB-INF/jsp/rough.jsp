<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div id="main-container">
    <div id="breadcrumb">
        <div class="padding-md">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form ">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="sr-only">Search by Address</label>

                                    <div class="input-group" style="width: 300px">
                                        <input type="text" class="form-control input-sm"
                                               id="searchInputText"
                                               placeholder="Search Reservable Charging Spots...">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Radius (Km)</label>
                                    <input type="text" class="form-control" value="10" id="sl1"
                                           data-slider-value="10" data-slider-handle="round"/>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-success"
                                                id="searchStationButton"
                                                style="left: 25px;"
                                                tabindex="-1">Search Stations
                                        </button>
                                        <button type="button" class="btn btn-sm btn-info"
                                                data-toggle="modal" data-target="#gridSystemModal"
                                                style="float: right;"
                                                id="advancedSearchButtonId1"
                                                tabindex="-1">Advanced Search
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="modal fade" role="dialog" id="gridSystemModal" aria-labelledby="gridSystemModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="gridSystemModalLabel">Advanced Search</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <form>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <label class="control-label">FastDC price range:</label>
                                    </div>
                                    <div class="col-md-3"><input id="fastDCPriceMinId" type="text"
                                                          class="advancedSearchFields form-control"
                                                          placeholder="Min value"/></div>
                                    <div class="col-md-3 col-md-offset-1"><input id="fastDCPriceMaxId" type="text"
                                                                                 class="advancedSearchFields form-control"
                                                                                 placeholder="Max value"/> </div>
                                </div>
                                    <div class="row">
                                        <div class="col-md-12">&nbsp;</div>
                                    </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <label class="control-label">Level2 price range:</label>
                                    </div>
                                    <div class="col-md-3"><input id="level2PriceMinId" type="text"
                                                                 placeholder="Min value"
                                                                 class="advancedSearchFields form-control"/></div>
                                    <div class="col-md-3 col-md-offset-1"><input id="level2PriceMaxId" type="text"
                                                                                 placeholder="Max value"
                                                                                 class="advancedSearchFields form-control"/></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">&nbsp;</div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1"><b>Usage Type:</b></div>
                                    <div class="col-md-7">
                                        <select id="usageTypeId" class="form-control">
                                            <option>All</option>
                                            <option>PLANNED - not yet accessible (Public)</option>
                                            <option>Private</option>
                                            <option>TEMPORARILY UNAVAILABLE (Public)</option>
                                            <option>Public - Call ahead</option>
                                            <option>PLANNED - not yet accessible</option>
                                            <option>Private - Government only</option>
                                            <option>Public</option>
                                            <option>Public - Credit card at all times</option>
                                            <option>PLANNED - not yet accessible (Public - Card key at all times)</option>
                                            <option>Public - Card key at all times</option>
                                            <option>PLANNED - not yet accessible (Public - Call ahead)</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">&nbsp;</div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1"><b>Site Type:</b></div>
                                    <div class="col-md-7">
                                        <select id="siteTypeId" class="form-control">
                                            <option>All</option>
                                            <option>EVLEVEL2:DCFAST</option>
                                            <option>EVLEVEL2:&nbsp;</option>
                                            <option>&nbsp;:DCFAST</option>
                                            <option>&nbsp;:&nbsp;</option>
                                        </select>
                                    </div>
                                </div>
                                </form>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                            <button type="button" id = "advancedSearchButtonMainId" data-dismiss="modal"
                                    class="btn btn-primary">Search
                                Stations</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div id="googlemap"> Google map loading..</div>
            <div class="padding-sm"></div>

            <div class="panel panel-default table-responsive">
                <div class="panel-heading">Charging Sites
                    <span id="numberLocation" class="label label-info pull-right">0 Items</span>
                </div>
                <div class="padding-md clearfix" id="csSiteDataTableDiv">
                    <table class="table table-striped" id="csSiteListDataTable"></table>
                </div>
            </div>
        </div>
    </div>
    <!-- /.padding-md -->
</div>
<!-- breadcrumb -->
</div>
<!-- /main-container -->
</div>
<!-- /wrapper -->
