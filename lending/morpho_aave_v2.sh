# This script extracts interaction events with Morpho-Aave V2 optimizer

# Morpho-Aave V2 optimizer supply
cryo logs \
    --label ma2_supply \
    --subdirs datatype \
    --blocks 15M: \
    --contract 0x777777c9898d384f785ee44acfe945efdff5f3e0 \
    --event-signature "Supplied(address indexed _from, address indexed _onBehalf, address indexed _poolToken, uint256 _amount, uint256 _balanceOnPool, uint256 _balanceInP2P)" \
    --chunk-size 10000 \
    --inner-request-size 1000\
    --requests-per-second 500 \
    --max-concurrent-requests 5\
    --topic0 0x11adb3570ba55fd255b1f04252ca0071ae6639c86d4fd69e7c1bf1688afb493f

# Morpho-Aave V2 optimizer withdraw
cryo logs \
    --label ma2_withdraw \
    --subdirs datatype \
    --blocks 15M: \
    --contract 0x777777c9898d384f785ee44acfe945efdff5f3e0 \
    --event-signature "Withdrawn(address indexed user, address indexed token, address indexed destination, uint256 timestamp, uint256 amount, uint256 capAmount)" \
    --chunk-size 10000 \
    --inner-request-size 1000\
    --requests-per-second 500 \
    --max-concurrent-requests 5\
    --topic0 0x378f9d375cd79e36c19c26a9e57791fe7cd5953b61986c01ebf980c0efb92801

# Morpho-Aave V2 optimizer borrow
cryo logs \
    --label ma2_borrow \
    --subdirs datatype \
    --blocks 15M: \
    --contract 0x777777c9898d384f785ee44acfe945efdff5f3e0 \
    --event-signature "Borrowed(address indexed _borrower, address indexed _poolTokenAddress, uint256 _amount, uint256 _balanceOnPool, uint256 _balanceInP2P)" \
    --chunk-size 10000 \
    --inner-request-size 1000\
    --requests-per-second 500 \
    --max-concurrent-requests 5\
    --topic0 0xc1cba78646fef030830d099fc25cb498953709c9d47d883848f81fd207174c9f

# Morpho-Aave V2 optimizer repay
cryo logs \
    --label ma2_repay \
    --subdirs datatype \
    --blocks 15M: \
    --contract 0x777777c9898d384f785ee44acfe945efdff5f3e0 \
    --event-signature "Repaid(address indexed _repayer, address indexed _onBehalf, address indexed _poolTokenAddress, uint256 _amount, uint256 _balanceOnPool, uint256 _balanceInP2P)" \
    --chunk-size 10000 \
    --inner-request-size 1000\
    --requests-per-second 500 \
    --max-concurrent-requests 5\
    --topic0 0x7b417e520d2b905fc5a1689d29d329358dd55efc60ed115aa165b0a2b64232c6