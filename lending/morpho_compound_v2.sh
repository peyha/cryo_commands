# This script extracts interaction events with Morpho-Compound V2 optimizer

# Morpho-Compound V2 optimizer supply
cryo logs \
    --label mc_supply \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "event Supplied(address indexed _supplier,address indexed _onBehalf,address indexed _poolToken,uint256 _amount,uint256 _balanceOnPool,uint256 _balanceInP2P)" \
    --inner-request-size 10000\
    --topic0 0x11adb3570ba55fd255b1f04252ca0071ae6639c86d4fd69e7c1bf1688afb493f

# Morpho-Compound V2 optimizer withdraw
cryo logs \
    --label mc_withdraw \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "Withdrawn(address indexed user, address indexed token, address indexed destination, uint256 timestamp, uint256 amount, uint256 capAmount)" \
    --inner-request-size 10000\
    --topic0 0x378f9d375cd79e36c19c26a9e57791fe7cd5953b61986c01ebf980c0efb92801

# Morpho-Compound V2 optimizer supplier position update
cryo logs \
    --label mc_supplier_update \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "SupplierPositionUpdated(address indexed _user, address indexed _poolTokenAddress,uint256 _balanceOnPool,uint256 _balanceInP2P)" \
    --inner-request-size 10000\
    --topic0 0x76908587112671ab2dcd9323f0d9b27d193156f95fe5e1251411a151c20e82dd

# Morpho-Compound V2 optimizer borrow
cryo logs \
    --label mc_borrow \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "Borrowed(address indexed _borrower, address indexed _poolTokenAddress, uint256 _amount, uint256 _balanceOnPool, uint256 _balanceInP2P)" \
    --inner-request-size 10000\
    --topic0 0xc1cba78646fef030830d099fc25cb498953709c9d47d883848f81fd207174c9f

# Morpho-Compound V2 optimizer repay
cryo logs \
    --label mc_repay \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "Repaid(address indexed _repayer, address indexed _onBehalf, address indexed _poolTokenAddress, uint256 _amount, uint256 _balanceOnPool, uint256 _balanceInP2P)" \
    --inner-request-size 10000\
    --topic0 0x7b417e520d2b905fc5a1689d29d329358dd55efc60ed115aa165b0a2b64232c6

# Morpho-Compound V2 optimizer borrower position update
cryo logs \
    --label mc_borrower_update \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "BorrowerPositionUpdated(address indexed _user, address indexed _poolTokenAddress,uint256 _balanceOnPool,uint256 _balanceInP2P)" \
    --inner-request-size 10000\
    --topic0  0x0aec3812ec00f2d2f0eacc89fd13923091a68f30c3b3d0336e364544322b9758

# Morpho-Compound V2 optimizer rates
cryo logs \
    --label mc_rates \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "P2PIndexesUpdated(address indexed _poolTokenAddress,uint256 _p2pSupplyIndex,uint256 _p2pBorrowIndex,uint256 _poolSupplyIndex,uint256 _poolBorrowIndex)" \
    --inner-request-size 10000\
    --topic0  0xe9f571cc89dec9d3545848be792adb166a35fd4ac7f853471f9b5a16db51b9e8

# Morpho-Compound V2 optimizer liquidate
cryo logs \
    --label mc_liquidate \
    --subdirs datatype \
    --blocks 14.86M: \
    --contract 0x8888882f8f843896699869179fb6e4f7e3b58888 \
    --event-signature "Liquidated(address indexed _liquidator, address indexed _liquidated, address indexed _poolTokenBorrowedAddress, uint256 _amountRepaid, address _poolTokenCollateralAddress, uint256 _amountSeized)" \
    --inner-request-size 10000\
    --topic0   0xc2c75a73164c2efcbb9f74bfa511cd0866489d90687831a7217b3dbeeb697088