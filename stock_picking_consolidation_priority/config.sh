BACKUP=
BACKUP_REPO=
ODOO_USER=odoo
OD_VER=14
ODOO_PATH=/opt/odoo/${OD_VER}
ODOO_VENV=/opt/odoo/${OD_VER}_env
ODOO_FILESTORE=~/.local/share/Odoo/filestore
OCA_REPO_FOLDER=~/trobz/oca
MIG_MODULE=stock_picking_consolidation_priority
REPO=stock-logistics-warehouse
REPO_MODULES=scrap_reason_code,stock_archive_constraint,stock_available_immediately,stock_available,stock_available_mrp,stock_available_unreserved,stock_demand_estimate,stock_demand_estimate_matrix,stock_free_quantity,stock_generate_putaway_from_inventory,stock_helper,stock_inventory_preparation_filter,stock_location_bin_name,stock_location_children,stock_location_lockdown,stock_location_position,stock_location_tray,stock_location_zone,stock_measuring_device,stock_measuring_device_zippcube,stock_move_common_dest,stock_move_location,stock_orderpoint_move_link,stock_packaging_calculator,stock_picking_cancel_confirm,stock_pull_list,stock_putaway_method,stock_quant_manual_assign,stock_request,stock_request_picking_type,stock_reserve_rule,stock_search_supplierinfo_code,stock_vertical_lift,stock_warehouse_calendar
# Uncomment for overriding
# OCA_REPOS=${REPO}
GH_NAME=HoKhanhNguyen99
DB_SUFFIX=stckpckgcnsnprrt
SRC_BR=13.0
TGT_VER=14.0

# Uncomment to debug
# DEBUG=echo

# Uncomment to enable workers
# 2 workers do not work well with coverage
# WORKERS="-d od${OD_VER}_demo_${DB_SUFFIX} --workers=0 --load=base,queue_job"
