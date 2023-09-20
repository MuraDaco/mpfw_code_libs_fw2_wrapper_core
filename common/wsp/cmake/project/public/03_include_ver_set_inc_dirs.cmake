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
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################

include(${CODE_MAIN_CMAKE_LIBS_FW2_WRAPPER_CORE_VER_DEF_DIR}/set_class_src_ver.cmake)

set(LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC      ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR}/src )

set(KR_THREAD_DIR               kr/krThread/v_${KR_THREAD_VER} )
set(KR_THREAD_COMMON_DIR        ../../common/src/kr/krThread/v_${KR_THREAD_VER} )
set(SY_THREAD_DIR               sy/syThread/v_${SY_THREAD_VER} )
set(TB_KR_THREAD_DIR            tb/kr/krThread/v_${TB_KR_THREAD_VER} )


set(CODE_DIR_LIB_FW2_WP_KR_INCLUDE
    ${FW2_WRAPPER_CORE_CONF_DIR}

    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${KR_THREAD_DIR}
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${KR_THREAD_COMMON_DIR}
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${SY_THREAD_DIR}
    ${LIBS_FW2_WRAPPER_CORE_PLATFORM_DIR_SRC}/${TB_KR_THREAD_DIR}
)

