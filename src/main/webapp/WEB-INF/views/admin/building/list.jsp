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
    <title>Danh sách tòa nhà</title>
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
                <li class="active">Quản lý tòa nhà</li>
            </ul><!-- /.breadcrumb -->


        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>
                    Quản lý tòa nhà
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div><!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12 widget-container-col ui-sortable">
                    <div class="widget-box ui-sortable-handle">
                        <div class="widget-header">
                            <h5 class="widget-title">Tìm kiếm tòa nhà</h5>

                            <div class="widget-toolbar">
                                <a href="#" data-action="close">
                                    <i class="ace-icon fa fa-times"></i>
                                </a>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <div class="row">
                                    <div class="">
                                            <div class="col-xs-12 ">
                                                <div class="col-xs-6">
                                                    <label for="name">Tên tòa nhà</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label for="name">Diện tích sàn</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                            </div>

                                        <div class="col-xs-12 ">
                                            <div class="col-xs-2">
                                                <label for="name">Quận</label>
                                                <select name="text" class="form-control">
                                                    <option value="1">Quận 1 </option>
                                                    <option value="2">Quận 2 </option>
                                                    <option value="3">Quận 3 </option>
                                                    <option value="4">Quận 4 </option>
                                                    <option value="10">Quận 10 </option>
                                                </select>
                                            </div>
                                            <div class="col-xs-5">
                                                <label for="name">Phường</label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="col-xs-5">
                                                <label for="name">Đường</label>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-xs-12">
                                            <div class="col-xs-3">
                                                <label for="name">Số tầng hầm</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-3">
                                                <label for="name">Hướng</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-3">
                                                <label for="name">Hạng</label>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-2">
                                                <label for="name">Diện tích từ</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-2">
                                                <label for="name">Diện tích đến</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-2">
                                                <label for="name">Giá thuê từ</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-2">
                                                <label for="name">Giá thuê đến</label>
                                                <input type="number" class="form-control">
                                            </div>

                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-4">
                                                <label for="name">Tên quản lý</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-4">
                                                <label for="name">Điện thoại quản lý</label>
                                                <input type="number" class="form-control">
                                            </div>
                                            <div class="col-xs-3">
                                                <label for="name">Chọn nhân viên phụ trách</label>
                                                <select name="text" class="form-control">
                                                    <option value="1">Nhân viên 1 </option>
                                                    <option value="2">Nhân viên  2 </option>
                                                    <option value="3">Nhân viên  3 </option>
                                                    <option value="4">Nhân viên  4 </option>

                                                </select>
                                            </div>

                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-10">
                                                <div class="multi-select">
                                                    <label for="noithat" class="col-xs-3">
                                                        <input type="checkbox" name="noithat">
                                                        Nội thất
                                                    </label>
                                                    <label for="nguyencan" class="col-xs-3">
                                                        <input type="checkbox" name="nguyencan">
                                                        Nguyên căn
                                                    </label>
                                                    <label for="tangtret" class="col-xs-3">
                                                        <input type="checkbox" name="tangtret">
                                                        Tầng trệt
                                                    </label>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-2">
                                                <button class="btn btn-danger btn-block" >Tìm kiếm</button>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="pull-right" style="margin: 2em 0;" title="Thêm tòa nhà">
                            <a class="btn btn-info" href='/admin/building-edit'>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-fill-add" viewBox="0 0 16 16">
                                    <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                </svg>
                            </a>
                            <button class="btn btn-danger " title="Xóa tòa nhà">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-fill-dash" viewBox="0 0 16 16">
                                    <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"/>
                                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                </svg>
                            </button>
                        </div>

                    </div>


                </div>
            </div>

            <div class="row" style="margin: 2em 0;">
                <div class="col-xs-12">
                    <table id="simple-table" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Tên tòa nhà</th>
                            <th>Địa chỉ</th>
                            <th>Số tầng hầm</th>
                            <th>Tên quản lý</th>
                            <th>Số điện thoại</th>
                            <th>Diện tích sàn</th>
                            <th>Diện tích trống</th>
                            <th>Diện tích thuê</th>
                            <th>Phí môi giới</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td>ACM Building</td>
                            <td>45</td>
                            <td>3000</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>



                            <td>
                                <div class="hidden-sm hidden-xs btn-group">
                                    <button class="btn btn-xs btn-success" onclick="assingmentBuiling(1)">
                                        <i class="ace-icon fa fa-check bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-info">
                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-danger">
                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                    </button>

                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                            <li>
                                                <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
																	<span class="blue">
																		<i class="ace-icon fa fa-search-plus bigger-120"></i>
																	</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
																	<span class="red">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td>ACM Building</td>
                            <td>45</td>
                            <td>3000</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>
                            <td>Abc</td>



                            <td>
                                <div class="hidden-sm hidden-xs btn-group">
                                    <button class="btn btn-xs btn-success " onclick="assingmentBuiling(1)">
                                        <i class="ace-icon fa fa-check bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-info">
                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-danger">
                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                    </button>


                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                            <li>
                                                <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
																	<span class="blue">
																		<i class="ace-icon fa fa-search-plus bigger-120"></i>
																	</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
																	<span class="red">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div><!-- /.span -->
            </div>



        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<!-- The Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content" id="staffList">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Danh sách nhân viên</h4>
            </div>

            <!-- Modal Body -->
            <div class="modal-body">
                <div>
                    <table id="simple-table" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Chọn </th>
                            <th>Tên nhân viên</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr  class="center">
                            <td><input type="checkbox" id="checkbox1" value="3"></td>
                            <td>Trần Minh Điền</td>
                        </tr>
                        <tr  class="center">
                            <td><input type="checkbox" id="checkbox2" value="5"></td>
                            <td>Nguyễn Văn A</td>
                        </tr>
                        <tr  class="center">
                            <td><input type="checkbox" id="checkbox3" value="7"></td>
                            <td>Trần Văn B</td>
                        </tr>

                        </tbody>
                    </table>

                    <input type="hidden" id="buildingId" name="Building" value="1">
                </div>
            </div>

            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" id="btngiaotoanha">Giao tòa nhà</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
            </div>

        </div>
    </div>
</div>


<script>
    function assingmentBuiling(buildingid){
        $('#myModal').modal();

        $('#btngiaotoanha').click(function(e){
            e.preventDefault();
            var data = {};
            data['buildingId'] = $('#buildingId').val();
            var staffs = $('#staffList').find('tbody input[type="checkbox"]:checked').map(function() {
                return $(this).val();
            }).get();
            data['staffId'] = staffs;
            console.log("ok");
        });

    }
</script>





</body>
</html>
