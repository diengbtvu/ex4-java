<%--
  Created by IntelliJ IDEA.
  User: ditmt
  Date: 11/18/2024
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
  <head>
    <title>Chỉnh sửa tòa nhà</title>
  </head>
  <body>
  <div class="main-content">
    <div class="main-content-inner">
      <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
          try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>

        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">Home</a>
          </li>
          <li class="active">Sửa hoặc thêm mới tòa nhà</li>
        </ul><!-- /.breadcrumb -->


      </div>

      <div class="page-content">
        <div class="page-header">
          <h1>
            Sửa hoặc thêm mới tòa nhà
          </h1>
        </div><!-- /.page-header -->


        <div class="row">
          <div class="col-xs-12">

          </div>
        </div>
        <!-- bảng danh sách -->
        <div class="row">
          <div class="col-xs-12">

            <form:form  modelAttribute="building-edit" class="form-horizontal" id="form-edit">
              <div class="form-group">
                <label  class="col-xs-3">Tên tòa nhà</label>
                <div class="col-xs-9">
                    <form:input path="name" class="form-control" id="name" />
                </div>
              </div>

              <div class="form-group">
                <label  class="col-xs-3">Chọn quận </label>

                <div class="col-xs-8">
                  <select id="districtid" name="districtid" class="form-control" class="col-xs-3" name="districtid">
                    <option value="0">-- Chọn quận -- </option>
                    <option value="1">Quận 1 </option>
                    <option value="2">Quận 2 </option>
                    <option value="3">Quận 3 </option>
                    <option value="4">Quận 4 </option>

                  </select>
                </div>
              </div>


              <div class="form-group">
                <label  class="col-xs-3">Phường</label>
                <div class="col-xs-9">
                  <form:input path="ward" class="form-control" id="ward" />
                </div>
              </div>


              <div class="form-group">
                <label class="col-xs-3">Đường</label>
                <div class="col-xs-9">
                  <form:input path="street" class="form-control" id="street"/>
                </div>
              </div>


              <div class="form-group">
                <label  class="col-xs-3">Kết cấu</label>
                <div class="col-xs-9">
                  <form:input path="structure" class="form-control" id="structure" />
                </div>
              </div>
              <div class="form-group">
                <label  class="col-xs-3">Số tầng hầm</label>
                <div class="col-xs-9">
                  <form:input path="numberOfBasement" class="form-control" id="numberOfBasement" />
                </div>
              </div>
              <div class="form-group">
                <label  class="col-xs-3">Diện tích sàn</label>
                <div class="col-xs-9">
                  <form:input path="floorArea" class="form-control" id="floorarea" />
                </div>
              </div>
              <div class="form-group">
                <label  class="col-xs-3">Hướng</label>
                <div class="col-xs-9">
                  <form:input path="direction" class="form-control" id="direction" />
                </div>
              </div>
              <div class="form-group">
                <label  class="col-xs-3">Hạng</label>
                <div class="col-xs-9">
                  <form:input path="level" class="form-control" id="level" />
                </div>
              </div>
              <div class="form-group">
                <label  class="col-xs-3">Diện tích thuê</label>
                <div class="col-xs-9">
                  <form:input path="rentArea" class="form-control" id="rentarea" />
                </div>
              </div>
              <div class="form-group">
                <label  class="col-xs-3">Giá thuê</label>
                <div class="col-xs-9">
                  <form:input path="rentPrice" class="form-control" id="rentprice" />
                </div>
              </div>

              <div class="form-group">
                <label class="col-xs-3">Mô tả giá</label>
                <div class="col-xs-9">
                  <form:input path="rentPriceDescription" class="form-control" id="rentpricedescription" />
                </div>
              </div>

              <div class="form-group">
                <label class="col-xs-3">Loại tòa nhà</label>
                <div class="col-xs-9">
                  <div class="col-xs-2">
                    <label>Nguyên căn</label>
                    <form:checkbox path="typeCode" class="checkbox-inline" value="nguyen-can" />
                  </div>
                  <div class="col-xs-2">
                    <label>Tầng trệt</label>
                    <form:checkbox path="typeCode" class="checkbox-inline" value="tang-tret" />
                  </div>
                  <div class="col-xs-2">
                    <label>Nội thất</label>
                    <form:checkbox path="typeCode" class="checkbox-inline" value="noi-that" />
                  </div>
                </div>
              </div>

              <div class="form-group">
                <label  class="col-ms-3"></label>
                <div class="col-xs-">


                  <button onclick="addBuilding()" type="button" class="btn btn-info" id="btn-add-building">Thêm tòa nhà</button>


                  <button type="button" class="btn btn-danger">Hủy thao tác</button>

                </div>
              </div>
            </form:form>


          </div>
        </div>


      </div><!-- /.page-content -->
    </div>
  </div><!-- /.main-content -->


  <script>
    function addBuilding() {
      var buildingData = {
        name: $('#name').val(),
        districtId: $('#districtid').val(),
        ward: $('#ward').val(),
        street: $('#street').val(),
        structure: $('#structure').val(),
        numberOfBasement: $('#numberOfBasement').val(),
        floorArea: $('#floorarea').val(),
        direction: $('#direction').val(),
        level: $('#level').val(),
        rentArea: $('#rentarea').val(),
        rentPrice: $('#rentprice').val(),
        rentPriceDescription: $('#rentpricedescription').val(),
        typeCode: $('input[name="typeCode"]:checked').map(function() {
          return this.value;
        }).get()
      };

      $.ajax({
        type: 'POST',
        url: '/admin/building-add',
        contentType: 'application/json',
        data: JSON.stringify(buildingData),
        success: function(response) {
          alert('Tòa nhà đã được thêm thành công!');
          // Optionally, you can redirect or update the page content here
        },
        error: function(error) {
          alert('Đã xảy ra lỗi khi thêm tòa nhà.');
        }
      });
    }
  </script>

  </body>
</html>
