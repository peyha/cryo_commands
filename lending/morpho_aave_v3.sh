# This script extracts interaction events with Morpho-Aave V3 optimizer

# Morpho-Aave V3 optimizer supply
cryo logs \
    --label ma3_supply \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "Supplied(address indexed _supplier, address indexed _onBehalf, address indexed _poolTokenAddress, uint256 _amount, uint256 _balanceOnPool, uint256 _balanceInP2P)" \
    --inner-request-size 1000\
    --topic0 0x11adb3570ba55fd255b1f04252ca0071ae6639c86d4fd69e7c1bf1688afb493f

# Morpho-Aave V3 optimizer withdraw
cryo logs \
    --label ma3_withdraw \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "Withdrawn(address caller,address indexed onBehalf,address indexed receiver,address indexed underlying,uint256 amount,uint256 scaledOnPool,uint256 scaledInP2P)" \
    --inner-request-size 1000\
    --topic0 0x6a9c828ef646db99cc7a20bbfb02fdf8f7dcc183400a28daab4968e47b9a21e0

# Morpho-Aave V3 optimizer supplier position update
cryo logs \
    --label ma3_supplier_update \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "SupplyPositionUpdated(address indexed user,address indexed underlying,uint256 scaledOnPool,uint256 scaledInP2P)" \
    --inner-request-size 1000\
    --topic0 0x82784f5c4393a9d1646b5c21c845e4366c3160cf42b957716877bbefeb45705c

# Morpho-Aave V3 optimizer supply collateral
cryo logs \
    --label ma3_supply_collateral \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "CollateralSupplied(address indexed from,address indexed onBehalf,address indexed underlying,uint256 amount,uint256 scaledBalance)" \
    --inner-request-size 1000\
    --topic0 0x4d1fc6dc36972a1eeab2351fae829d06c827d7ee429880dbf762ec00b805fb2f

# Morpho-Aave V3 optimizer withdraw collateral
cryo logs \
    --label ma3_withdraw_collateral \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "CollateralWithdrawn(address caller,address indexed onBehalf,address indexed receiver,address indexed underlying,uint256 amount,uint256 scaledBalance)" \
    --inner-request-size 1000\
    --topic0 0xb49f4cffa4b6674963440a1fb6cb419c233a9341280f44d8543571eca1306577

# Morpho-Aave V3 optimizer borrow
cryo logs \
    --label ma3_borrow \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "Borrowed(address caller,address indexed onBehalf,address indexed receiver,address indexed underlying,uint256 amount,uint256 scaledOnPool,uint256 scaledInP2P)" \
    --inner-request-size 1000\
    --topic0 0xf99275e3db7a3400181f0bd088002bba02b833be9187bccc88fbbc79fb52f2f1


# Morpho-Aave V3 optimizer repay
cryo logs \
    --label ma3_repay \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "Repaid(address indexed repayer,address indexed onBehalf,address indexed underlying,uint256 amount,uint256 scaledOnPool,uint256 scaledInP2P)" \
    --inner-request-size 1000\
    --topic0 0x7b417e520d2b905fc5a1689d29d329358dd55efc60ed115aa165b0a2b64232c6

# Morpho-Aave V3 optimizer borrower position update
cryo logs \
    --label ma3_borrower_update \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "BorrowPositionUpdated(address indexed user,address indexed underlying,uint256 scaledOnPool,uint256 scaledInP2P)" \
    --inner-request-size 1000\
    --topic0 0x91f5b273b6b78b55e25fb4e5f27a0e7eeccf8a71e105b7676e5c56ec64179bf0

# Morpho-Aave V3 optimizer rates
cryo logs \
    --label ma3_rates \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "IndexesUpdated(address indexed underlying,uint256 poolSupplyIndex,uint256 p2pSupplyIndex,uint256 poolBorrowIndex,uint256 p2pBorrowIndex)" \
    --inner-request-size 1000\
    --topic0  0xb7f1c1a7c27b63c53c9c4700bfc54d905ec2ef2b451c24e6426a7cc86fed7ed7

# Morpho-Aave V3 optimizer liquidation
cryo logs \
    --label ma3_liquidation \
    --subdirs datatype \
    --blocks 17M: \
    --contract 0x33333aea097c193e66081E930c33020272b33333 \
    --event-signature "Liquidated(address indexed liquidator,address indexed borrower,address indexed underlyingBorrowed,uint256 amountLiquidated,address underlyingCollateral,uint256 amountSeized)" \
    --inner-request-size 1000\
    --topic0 0xc2c75a73164c2efcbb9f74bfa511cd0866489d90687831a7217b3dbeeb697088