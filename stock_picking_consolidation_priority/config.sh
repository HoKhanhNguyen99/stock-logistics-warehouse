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
DEP_TREE=`cat <<EOF
scrap_reason_code (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_archive_constraint (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_available (14.0.1.0.2)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_available_immediately (14.0.1.0.0)
└── stock_available (14.0.1.0.2)
    └── stock (14.0+c)
        ├── barcodes (14.0+c)
        │   └── web (14.0+c)
        ├── digest (14.0+c)
        │   ├── mail (14.0+c)
        │   │   ├── base_setup (14.0+c)
        │   │   │   └── web ⬆
        │   │   ├── bus (14.0+c)
        │   │   │   └── web ⬆
        │   │   └── web_tour (14.0+c)
        │   │       └── web ⬆
        │   ├── portal (14.0+c)
        │   │   ├── auth_signup (14.0+c)
        │   │   │   ├── base_setup ⬆
        │   │   │   ├── mail ⬆
        │   │   │   └── web ⬆
        │   │   ├── http_routing (14.0+c)
        │   │   │   └── web ⬆
        │   │   ├── mail ⬆
        │   │   ├── web ⬆
        │   │   └── web_editor (14.0+c)
        │   │       └── web ⬆
        │   └── resource (14.0+c)
        │       └── web ⬆
        └── product (14.0+c)
            ├── mail ⬆
            └── uom (14.0+c)
stock_available_mrp (14.0.1.0.2)
├── mrp (14.0+c)
│   ├── product (14.0+c)
│   │   ├── mail (14.0+c)
│   │   │   ├── base_setup (14.0+c)
│   │   │   │   └── web (14.0+c)
│   │   │   ├── bus (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   └── web_tour (14.0+c)
│   │   │       └── web ⬆
│   │   └── uom (14.0+c)
│   ├── resource (14.0+c)
│   │   └── web ⬆
│   └── stock (14.0+c)
│       ├── barcodes (14.0+c)
│       │   └── web ⬆
│       ├── digest (14.0+c)
│       │   ├── mail ⬆
│       │   ├── portal (14.0+c)
│       │   │   ├── auth_signup (14.0+c)
│       │   │   │   ├── base_setup ⬆
│       │   │   │   ├── mail ⬆
│       │   │   │   └── web ⬆
│       │   │   ├── http_routing (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   ├── mail ⬆
│       │   │   ├── web ⬆
│       │   │   └── web_editor (14.0+c)
│       │   │       └── web ⬆
│       │   └── resource ⬆
│       └── product ⬆
└── stock_available (14.0.1.0.2)
    └── stock ⬆
stock_available_unreserved (14.0.1.0.1)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_demand_estimate (14.0.1.1.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_demand_estimate_matrix (14.0.1.0.0)
├── date_range (14.0.2.0.2)
│   └── web (14.0+c)
├── stock_demand_estimate (14.0.1.1.0)
│   └── stock (14.0+c)
│       ├── barcodes (14.0+c)
│       │   └── web ⬆
│       ├── digest (14.0+c)
│       │   ├── mail (14.0+c)
│       │   │   ├── base_setup (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   ├── bus (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   └── web_tour (14.0+c)
│       │   │       └── web ⬆
│       │   ├── portal (14.0+c)
│       │   │   ├── auth_signup (14.0+c)
│       │   │   │   ├── base_setup ⬆
│       │   │   │   ├── mail ⬆
│       │   │   │   └── web ⬆
│       │   │   ├── http_routing (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   ├── mail ⬆
│       │   │   ├── web ⬆
│       │   │   └── web_editor (14.0+c)
│       │   │       └── web ⬆
│       │   └── resource (14.0+c)
│       │       └── web ⬆
│       └── product (14.0+c)
│           ├── mail ⬆
│           └── uom (14.0+c)
└── web_widget_x2many_2d_matrix (14.0.1.0.1)
    └── web ⬆
stock_free_quantity (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_generate_putaway_from_inventory (14.0.1.0.0)
├── stock (14.0+c)
│   ├── barcodes (14.0+c)
│   │   └── web (14.0+c)
│   ├── digest (14.0+c)
│   │   ├── mail (14.0+c)
│   │   │   ├── base_setup (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   ├── bus (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   └── web_tour (14.0+c)
│   │   │       └── web ⬆
│   │   ├── portal (14.0+c)
│   │   │   ├── auth_signup (14.0+c)
│   │   │   │   ├── base_setup ⬆
│   │   │   │   ├── mail ⬆
│   │   │   │   └── web ⬆
│   │   │   ├── http_routing (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   ├── mail ⬆
│   │   │   ├── web ⬆
│   │   │   └── web_editor (14.0+c)
│   │   │       └── web ⬆
│   │   └── resource (14.0+c)
│   │       └── web ⬆
│   └── product (14.0+c)
│       ├── mail ⬆
│       └── uom (14.0+c)
└── stock_location_children (14.0.1.0.0)
    └── stock ⬆
stock_helper (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_inventory_preparation_filter (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_location_bin_name (14.0.1.0.0)
├── stock_location_position (14.0.1.0.0)
│   └── stock (14.0+c)
│       ├── barcodes (14.0+c)
│       │   └── web (14.0+c)
│       ├── digest (14.0+c)
│       │   ├── mail (14.0+c)
│       │   │   ├── base_setup (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   ├── bus (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   └── web_tour (14.0+c)
│       │   │       └── web ⬆
│       │   ├── portal (14.0+c)
│       │   │   ├── auth_signup (14.0+c)
│       │   │   │   ├── base_setup ⬆
│       │   │   │   ├── mail ⬆
│       │   │   │   └── web ⬆
│       │   │   ├── http_routing (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   ├── mail ⬆
│       │   │   ├── web ⬆
│       │   │   └── web_editor (14.0+c)
│       │   │       └── web ⬆
│       │   └── resource (14.0+c)
│       │       └── web ⬆
│       └── product (14.0+c)
│           ├── mail ⬆
│           └── uom (14.0+c)
└── stock_location_zone (14.0.1.0.0)
    └── stock ⬆
stock_location_children (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_location_lockdown (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_location_position (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_location_tray (14.0.1.1.0)
├── base_sparse_field (14.0+c)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_location_zone (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_measuring_device (14.0.1.0.0)
├── barcodes (14.0+c)
│   └── web (14.0+c)
├── component (14.0.1.1.0)
├── product_dimension (14.0.1.0.0)
│   └── product (14.0+c)
│       ├── mail (14.0+c)
│       │   ├── base_setup (14.0+c)
│       │   │   └── web ⬆
│       │   ├── bus (14.0+c)
│       │   │   └── web ⬆
│       │   └── web_tour (14.0+c)
│       │       └── web ⬆
│       └── uom (14.0+c)
├── product_packaging_dimension (14.0.1.0.1)
│   ├── product ⬆
│   └── product_logistics_uom (14.0.1.0.1)
│       └── product ⬆
├── product_packaging_type_required (14.0.1.0.0)
│   ├── product ⬆
│   └── product_packaging_type (14.0.0.1.0)
│       ├── product ⬆
│       └── stock (14.0+c)
│           ├── barcodes ⬆
│           ├── digest (14.0+c)
│           │   ├── mail ⬆
│           │   ├── portal (14.0+c)
│           │   │   ├── auth_signup (14.0+c)
│           │   │   │   ├── base_setup ⬆
│           │   │   │   ├── mail ⬆
│           │   │   │   └── web ⬆
│           │   │   ├── http_routing (14.0+c)
│           │   │   │   └── web ⬆
│           │   │   ├── mail ⬆
│           │   │   ├── web ⬆
│           │   │   └── web_editor (14.0+c)
│           │   │       └── web ⬆
│           │   └── resource (14.0+c)
│           │       └── web ⬆
│           └── product ⬆
├── stock ⬆
├── web_ir_actions_act_view_reload (14.0.1.0.0)
│   └── web ⬆
├── web_notify (14.0.1.0.0)
│   ├── bus ⬆
│   └── web ⬆
└── web_tree_dynamic_colored_field (14.0.1.0.0)
    └── web ⬆
stock_measuring_device_zippcube (14.0.1.0.0)
├── stock_measuring_device (14.0.1.0.0)
│   ├── barcodes (14.0+c)
│   │   └── web (14.0+c)
│   ├── component (14.0.1.1.0)
│   ├── product_dimension (14.0.1.0.0)
│   │   └── product (14.0+c)
│   │       ├── mail (14.0+c)
│   │       │   ├── base_setup (14.0+c)
│   │       │   │   └── web ⬆
│   │       │   ├── bus (14.0+c)
│   │       │   │   └── web ⬆
│   │       │   └── web_tour (14.0+c)
│   │       │       └── web ⬆
│   │       └── uom (14.0+c)
│   ├── product_packaging_dimension (14.0.1.0.1)
│   │   ├── product ⬆
│   │   └── product_logistics_uom (14.0.1.0.1)
│   │       └── product ⬆
│   ├── product_packaging_type_required (14.0.1.0.0)
│   │   ├── product ⬆
│   │   └── product_packaging_type (14.0.0.1.0)
│   │       ├── product ⬆
│   │       └── stock (14.0+c)
│   │           ├── barcodes ⬆
│   │           ├── digest (14.0+c)
│   │           │   ├── mail ⬆
│   │           │   ├── portal (14.0+c)
│   │           │   │   ├── auth_signup (14.0+c)
│   │           │   │   │   ├── base_setup ⬆
│   │           │   │   │   ├── mail ⬆
│   │           │   │   │   └── web ⬆
│   │           │   │   ├── http_routing (14.0+c)
│   │           │   │   │   └── web ⬆
│   │           │   │   ├── mail ⬆
│   │           │   │   ├── web ⬆
│   │           │   │   └── web_editor (14.0+c)
│   │           │   │       └── web ⬆
│   │           │   └── resource (14.0+c)
│   │           │       └── web ⬆
│   │           └── product ⬆
│   ├── stock ⬆
│   ├── web_ir_actions_act_view_reload (14.0.1.0.0)
│   │   └── web ⬆
│   ├── web_notify (14.0.1.0.0)
│   │   ├── bus ⬆
│   │   └── web ⬆
│   └── web_tree_dynamic_colored_field (14.0.1.0.0)
│       └── web ⬆
└── web_notify ⬆
stock_move_common_dest (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_move_location (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_orderpoint_move_link (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_packaging_calculator (14.0.1.0.1)
└── product (14.0+c)
    ├── mail (14.0+c)
    │   ├── base_setup (14.0+c)
    │   │   └── web (14.0+c)
    │   ├── bus (14.0+c)
    │   │   └── web ⬆
    │   └── web_tour (14.0+c)
    │       └── web ⬆
    └── uom (14.0+c)
stock_picking_cancel_confirm (14.0.1.0.1)
├── base_cancel_confirm (14.0.1.0.2)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_pull_list (14.0.1.0.0)
├── stock (14.0+c)
│   ├── barcodes (14.0+c)
│   │   └── web (14.0+c)
│   ├── digest (14.0+c)
│   │   ├── mail (14.0+c)
│   │   │   ├── base_setup (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   ├── bus (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   └── web_tour (14.0+c)
│   │   │       └── web ⬆
│   │   ├── portal (14.0+c)
│   │   │   ├── auth_signup (14.0+c)
│   │   │   │   ├── base_setup ⬆
│   │   │   │   ├── mail ⬆
│   │   │   │   └── web ⬆
│   │   │   ├── http_routing (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   ├── mail ⬆
│   │   │   ├── web ⬆
│   │   │   └── web_editor (14.0+c)
│   │   │       └── web ⬆
│   │   └── resource (14.0+c)
│   │       └── web ⬆
│   └── product (14.0+c)
│       ├── mail ⬆
│       └── uom (14.0+c)
└── stock_free_quantity (14.0.1.0.0)
    └── stock ⬆
stock_putaway_method (14.0.1.0.0)
├── product (14.0+c)
│   ├── mail (14.0+c)
│   │   ├── base_setup (14.0+c)
│   │   │   └── web (14.0+c)
│   │   ├── bus (14.0+c)
│   │   │   └── web ⬆
│   │   └── web_tour (14.0+c)
│   │       └── web ⬆
│   └── uom (14.0+c)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web ⬆
    ├── digest (14.0+c)
    │   ├── mail ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product ⬆
stock_quant_manual_assign (14.0.1.1.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_request (14.0.1.0.3)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_request_picking_type (14.0.1.0.0)
└── stock_request (14.0.1.0.3)
    └── stock (14.0+c)
        ├── barcodes (14.0+c)
        │   └── web (14.0+c)
        ├── digest (14.0+c)
        │   ├── mail (14.0+c)
        │   │   ├── base_setup (14.0+c)
        │   │   │   └── web ⬆
        │   │   ├── bus (14.0+c)
        │   │   │   └── web ⬆
        │   │   └── web_tour (14.0+c)
        │   │       └── web ⬆
        │   ├── portal (14.0+c)
        │   │   ├── auth_signup (14.0+c)
        │   │   │   ├── base_setup ⬆
        │   │   │   ├── mail ⬆
        │   │   │   └── web ⬆
        │   │   ├── http_routing (14.0+c)
        │   │   │   └── web ⬆
        │   │   ├── mail ⬆
        │   │   ├── web ⬆
        │   │   └── web_editor (14.0+c)
        │   │       └── web ⬆
        │   └── resource (14.0+c)
        │       └── web ⬆
        └── product (14.0+c)
            ├── mail ⬆
            └── uom (14.0+c)
stock_reserve_rule (14.0.1.0.0)
├── product_packaging_type (14.0.0.1.0)
│   ├── product (14.0+c)
│   │   ├── mail (14.0+c)
│   │   │   ├── base_setup (14.0+c)
│   │   │   │   └── web (14.0+c)
│   │   │   ├── bus (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   └── web_tour (14.0+c)
│   │   │       └── web ⬆
│   │   └── uom (14.0+c)
│   └── stock (14.0+c)
│       ├── barcodes (14.0+c)
│       │   └── web ⬆
│       ├── digest (14.0+c)
│       │   ├── mail ⬆
│       │   ├── portal (14.0+c)
│       │   │   ├── auth_signup (14.0+c)
│       │   │   │   ├── base_setup ⬆
│       │   │   │   ├── mail ⬆
│       │   │   │   └── web ⬆
│       │   │   ├── http_routing (14.0+c)
│       │   │   │   └── web ⬆
│       │   │   ├── mail ⬆
│       │   │   ├── web ⬆
│       │   │   └── web_editor (14.0+c)
│       │   │       └── web ⬆
│       │   └── resource (14.0+c)
│       │       └── web ⬆
│       └── product ⬆
├── stock ⬆
└── stock_helper (14.0.1.0.0)
    └── stock ⬆
stock_search_supplierinfo_code (14.0.1.0.0)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web (14.0+c)
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource (14.0+c)
    │       └── web ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
stock_vertical_lift (14.0.1.0.0)
├── barcodes (14.0+c)
│   └── web (14.0+c)
├── base_sparse_field (14.0+c)
├── stock (14.0+c)
│   ├── barcodes ⬆
│   ├── digest (14.0+c)
│   │   ├── mail (14.0+c)
│   │   │   ├── base_setup (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   ├── bus (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   └── web_tour (14.0+c)
│   │   │       └── web ⬆
│   │   ├── portal (14.0+c)
│   │   │   ├── auth_signup (14.0+c)
│   │   │   │   ├── base_setup ⬆
│   │   │   │   ├── mail ⬆
│   │   │   │   └── web ⬆
│   │   │   ├── http_routing (14.0+c)
│   │   │   │   └── web ⬆
│   │   │   ├── mail ⬆
│   │   │   ├── web ⬆
│   │   │   └── web_editor (14.0+c)
│   │   │       └── web ⬆
│   │   └── resource (14.0+c)
│   │       └── web ⬆
│   └── product (14.0+c)
│       ├── mail ⬆
│       └── uom (14.0+c)
├── stock_location_tray (14.0.1.1.0)
│   ├── base_sparse_field ⬆
│   └── stock ⬆
├── web_ir_actions_act_view_reload (14.0.1.0.0)
│   └── web ⬆
└── web_notify (14.0.1.0.0)
    ├── bus ⬆
    └── web ⬆
stock_warehouse_calendar (14.0.1.0.1)
├── resource (14.0+c)
│   └── web (14.0+c)
└── stock (14.0+c)
    ├── barcodes (14.0+c)
    │   └── web ⬆
    ├── digest (14.0+c)
    │   ├── mail (14.0+c)
    │   │   ├── base_setup (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── bus (14.0+c)
    │   │   │   └── web ⬆
    │   │   └── web_tour (14.0+c)
    │   │       └── web ⬆
    │   ├── portal (14.0+c)
    │   │   ├── auth_signup (14.0+c)
    │   │   │   ├── base_setup ⬆
    │   │   │   ├── mail ⬆
    │   │   │   └── web ⬆
    │   │   ├── http_routing (14.0+c)
    │   │   │   └── web ⬆
    │   │   ├── mail ⬆
    │   │   ├── web ⬆
    │   │   └── web_editor (14.0+c)
    │   │       └── web ⬆
    │   └── resource ⬆
    └── product (14.0+c)
        ├── mail ⬆
        └── uom (14.0+c)
EOF
`
INIT_MODULES=stock
INIT_REPO_MODULES=barcodes,base_cancel_confirm,base_sparse_field,component,date_range,mrp,product,product_dimension,product_packaging_dimension,product_packaging_type,product_packaging_type_required,resource,stock,web_ir_actions_act_view_reload,web_notify,web_tree_dynamic_colored_field,web_widget_x2many_2d_matrix
