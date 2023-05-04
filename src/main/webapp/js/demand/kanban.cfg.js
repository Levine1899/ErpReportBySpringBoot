
const kanbanCfg = {
    url: {
        //获取时间
        //getdate: '/portal/printerp/workflow/queryNodePortal?code=getdate',
        getdate: '/portal/bigScreen/query/currentDate',
        //库存状态-最近出入库数量
        stock_daily_count14: '/portal/printerp/workflow/queryNodePortal?code=wms_h_stock_daily.dayN&_value_day=14&_syntax_day=小于等于&pageSize=14',
        stock_daily_count30: '/portal/printerp/workflow/queryNodePortal?code=wms_h_stock_daily.dayN&_value_day=60&_syntax_day=小于等于&pageSize=30',
        stock_daily_count30All: '/portal/printerp/workflow/queryNodePortal?code=wms_h_stock_daily.dayNAll&_value_day=30&_syntax_day=小于等于&pageSize=30',
        //库存状态-库位热力
        location_hot: '/portal/printerp/workflow/queryNodePortal?code=wms_location.hot&pageSize=999',
        //库存状态-库位负荷
        location_load: '/portal/printerp/workflow/queryNodePortal?code=wms_location.load&pageSize=999',
        //材料仓物料状态-呆滞数据
        stock_delayA3: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.strandA3',
        //E厂成品仓物料状态-呆滞数据
        stock_delayEA1: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.strandEA1',
        //C厂成品仓物料状态-呆滞数据
        stock_delayA1: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.strandA1',
        //全部物料状态-呆滞数据
        stock_delayAll: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.strandAll',
        //物料状态-出入库top10
        stock_top10: '/portal/printerp/workflow/queryNodePortal?code=wms_carry_task.top10',
        //物料状态-物料种类数量
        stock_type_count: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.groupMaterial',
        //E成品仓库负荷
        storage_type_load: '/portal/printerp/workflow/queryNodePortal?code=wms_storage_type.load&pageSize=999',
        //E成品仓库容量
        warehouse_capacity: '/portal/printerp/workflow/queryNodePortal?code=wms_warehouse.capacity',
        //搬运任务列表
        carry_task_recent: '/portal/printerp/workflow/queryNodePortal?code=wms_carry_task.recent',
        //库存状态-库位明细
        location_Status: '/portal/printerp/workflow/queryNodePortal?code=wms_location.stockStatus&pageSize=999',
        //库存状态-库位库存查询
        location_Stock: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.queryLocation&pageSize=999',
        //库存产品客户查询
        stock_customer: '/portal/printerp/workflow/queryNodePortal?code=wms_stock.client&pageSize=999',
        //客户库存产品查询
        customer_stock: '/portal/printerp/workflow/queryNodePortal?code=wms_stock.clientPro&pageSize=999',
        //特定产品库存统计查询
        stock_search: '/portal/printerp/workflow/queryNodePortal?code=wms_stock.searchKey',
        //查询客户产品库存明细
        customer_stock_detail_search: '/portal/printerp/workflow/queryNodePortal?code=wms_stock_detail.customer',

        //查询发货计划列表
        delivery_list_search: '/portal/bigScreen/query/getShipListByDate'
        // //查询发货计划列表
        // delivery_list_search: '/sourceOrder/query/getShipmentMaterialByShipOrder'
    }
};



