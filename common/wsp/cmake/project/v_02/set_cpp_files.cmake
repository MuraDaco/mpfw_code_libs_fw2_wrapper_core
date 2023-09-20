#   *******************************************************************************
#   
#   mpfw / fw2 - Multi Platform FirmWare FrameWork 
#       library that contains the wrapper code to manage the threads
#   Copyright (C) (2023) Marco Dau
#   
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published
#   by the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#   
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#   
#   You can contact me by the following email address
#   marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
#   
#   *******************************************************************************
## ******************************************************************
## __________________________________________________________________
## LIB CPP FILES Definitions


set(KR_THREAD_CPP_DIR                       ${KR_THREAD_DIR}                        )
set(KR_THREAD_COMMON_CPP_DIR                ${KR_THREAD_COMMON_DIR}                 )
set(SY_THREAD_CPP_DIR                       ${SY_THREAD_DIR}                        )
set(TB_KR_THREAD_CPP_DIR                    ${TB_KR_THREAD_DIR}                     )

set(CODE_FILES_FW2_WP_KR_LIB_KR
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${KR_THREAD_CPP_DIR}/krThread.cpp
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${KR_THREAD_CPP_DIR}/krThreadManager.cpp
)

set(CODE_FILES_FW2_WP_KR_LIB_SY
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${SY_THREAD_CPP_DIR}/wp_sys_thread.cpp
)

set(CODE_FILES_FW2_WP_KR_LIB_TB
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${TB_KR_THREAD_CPP_DIR}/KrThreadTbl.cpp
)

## ******************************************************************
#________________________________________
## LIB FILES

set(CODE_CPP_FILES_FW2_WP_KR_LIB
    ${CODE_FILES_FW2_WP_KR_LIB_KR}
    ${CODE_FILES_FW2_WP_KR_LIB_SY}
    ${CODE_FILES_FW2_WP_KR_LIB_TB}
)

