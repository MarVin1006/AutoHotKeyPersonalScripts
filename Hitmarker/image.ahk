#SingleInstance Force

~Lbutton::SetSystemCursor() 
~Lbutton Up::RestoreCursors()

SetSystemCursor()
{
	IDC_SIZEALL := 32515
	CursorHandle := DllCall( "LoadCursor", Uint,0, Int,IDC_SIZEALL )
	Cursors = 32512,32513,32514,32515,32516,32640,32641,32642,32643,32644,32645,32646,32648,32649,32650,32651
	Loop, Parse, Cursors, `,
	{
		DllCall( "SetSystemCursor", Uint,CursorHandle, Int,A_Loopfield )
	}
	SoundPlay C:\Users\marco\Desktop\script\hitmarker\HITMARKER.wav
}

RestoreCursors() 
{
	SPI_SETCURSORS := 0x57
	DllCall( "SystemParametersInfo", UInt,SPI_SETCURSORS, UInt,0, UInt,0, UInt,0 )
}