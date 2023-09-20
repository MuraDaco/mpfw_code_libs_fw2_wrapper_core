//  *******************************************************************************
//  
//  mpfw / fw2 - Multi Platform FirmWare FrameWork 
//      library that contains the wrapper code to manage the threads
//  Copyright (C) (2023) Marco Dau
//  
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//  
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.
//  
//  You can contact me by the following email address
//  marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
//  
//  *******************************************************************************
/*
 * krThread.cpp
 *
 *  Created on: Sep, 16 2022
 *      Author: Marco Dau
 */

// moduel include
#include <krThread.h>

namespace fw2 {namespace wrapper {namespace core	{

krThread::krThread_STATUS krThread::g_Status = krThread::krThread_STATUS_RUN;

krThread::krThread(krThreadId p_ThreadId)
{
	g_Thread = thread_t(Loop, p_ThreadId);
}

void krThread::Loop (krThreadId p_thread) {

	do {

        wp_sleep_for(10);

		krThreadTbl::ThreadLoopFunction_t*  l_PtrThreadLoopFunction;
		l_PtrThreadLoopFunction = krThreadTbl::LoopFunctionArray;
		while (l_PtrThreadLoopFunction[0]) {
			l_PtrThreadLoopFunction[0](p_thread);
			l_PtrThreadLoopFunction++;
		}

		krThreadTbl::ThreadLoopFunction_t** l_Ptr2ThreadLoopFunction;
		l_Ptr2ThreadLoopFunction = krThreadTbl::LoopFunctionArray2;
		while (l_Ptr2ThreadLoopFunction[0]) {
			l_PtrThreadLoopFunction = l_Ptr2ThreadLoopFunction[0];

			while (l_PtrThreadLoopFunction[0]) {
				l_PtrThreadLoopFunction[0](p_thread);
				l_PtrThreadLoopFunction++;
			}
			l_Ptr2ThreadLoopFunction++;
		}

		// l_PtrThreadLoopFunction = g_PtrThreadLoopFunction;
		// if(l_PtrThreadLoopFunction)	{
		// 	while (l_PtrThreadLoopFunction[0]) {
		// 		l_PtrThreadLoopFunction[0](p_thread);
		// 		l_PtrThreadLoopFunction++;
		// 	}
		// }

	} while (krThread_STATUS_END != g_Status);
}

void krThread::Join 	(void)	{
	g_Thread.join();
}

void krThread::Exit 	(void)	{
	g_Status = krThread_STATUS_END;
}

}	} } // namespace fw2::wrapper::core