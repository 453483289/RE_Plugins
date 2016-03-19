VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{2668C1EA-1D34-42E2-B89F-6B92F3FF627B}#5.0#0"; "scivb2.ocx"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   Caption         =   "IDA JScript - http://sandsprite.com"
   ClientHeight    =   7020
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   10230
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   7020
   ScaleWidth      =   10230
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   1845
      Top             =   6480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin sci2.SciSimple txtJS 
      Height          =   3570
      Left            =   90
      TabIndex        =   9
      Top             =   90
      Width           =   10050
      _ExtentX        =   17727
      _ExtentY        =   6297
   End
   Begin MSScriptControlCtl.ScriptControl sc 
      Left            =   8190
      Top             =   45
      _ExtentX        =   1005
      _ExtentY        =   1005
      Language        =   "JScript"
   End
   Begin MSScriptControlCtl.ScriptControl sc2 
      Left            =   9675
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      Language        =   "jscript"
   End
   Begin VB.Frame Frame1 
      Caption         =   "Log Window and Output Pane"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3195
      Left            =   135
      TabIndex        =   0
      Top             =   3780
      Width           =   9975
      Begin VB.Frame fraSaved 
         BorderStyle     =   0  'None
         Caption         =   "Saved Scripts"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4500
         TabIndex        =   6
         Top             =   2640
         Width           =   3765
         Begin MSComctlLib.ImageCombo cboSaved 
            Height          =   375
            Left            =   1080
            TabIndex        =   7
            TabStop         =   0   'False
            Top             =   0
            Width           =   2655
            _ExtentX        =   4683
            _ExtentY        =   661
            _Version        =   393216
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Indentation     =   1
            Text            =   "ImageCombo1"
         End
         Begin VB.Label Label1 
            Caption         =   "Saved Scripts"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   0
            TabIndex        =   8
            Top             =   30
            Width           =   1155
         End
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Show Debug Log"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   150
         TabIndex        =   4
         TabStop         =   0   'False
         Top             =   2670
         Width           =   1935
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Run Script"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   8460
         TabIndex        =   3
         TabStop         =   0   'False
         Top             =   2550
         Width           =   1320
      End
      Begin VB.ListBox List1 
         BeginProperty Font 
            Name            =   "Courier"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2010
         Left            =   1020
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   360
         Visible         =   0   'False
         Width           =   8865
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Courier"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2280
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   2
         TabStop         =   0   'False
         Top             =   240
         Width           =   9615
      End
      Begin VB.Label lblIDB 
         Caption         =   "Current IDB (null)"
         BeginProperty Font 
            Name            =   "Courier"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2160
         TabIndex        =   5
         Top             =   2670
         Width           =   6135
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "Tools"
      Begin VB.Menu mnuOpenScript 
         Caption         =   "Open File"
      End
      Begin VB.Menu mnuSave 
         Caption         =   "Save"
      End
      Begin VB.Menu mnuSaveAs 
         Caption         =   "Save As"
      End
      Begin VB.Menu mnuSpacer1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLoadLast 
         Caption         =   "Load LastScript"
      End
      Begin VB.Menu mnuFormatJS 
         Caption         =   "Format Javascript"
      End
      Begin VB.Menu mnuSpacer2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuScintOpts 
         Caption         =   "Scintinella Version"
      End
      Begin VB.Menu mnuSelectIDAInstance 
         Caption         =   "Reconnect to IDA"
      End
      Begin VB.Menu mnuSHellExt 
         Caption         =   "Register .idajs Shell Extension"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public ida As New CIDAScript
Dim remote As New CRemoteExportClient

Public LoadedFile As String
      
Private Sub cboSaved_Click()
    On Error Resume Next
    Dim ci As ComboItem, f As String
    
    Set ci = cboSaved.SelectedItem
    f = ci.Tag
    
    If LoadedFile <> f Then
    
        If txtJS.isDirty Then
            If MsgBox("Save changes?", vbYesNo) = vbYes Then
                If Len(LoadedFile) = 0 Then
                    LoadedFile = dlg.SaveDialog(AllFiles)
                    If Len(LoadedFile) > 0 Then
                        fso.WriteFile LoadedFile, txtJS.Text
                    End If
                Else
                    fso.WriteFile LoadedFile, txtJS.Text
                End If
            End If
        End If
        
        LoadedFile = f
        txtJS.LoadFile f
    End If
    
End Sub

Private Sub Check1_Click()
    List1.Visible = CBool(Check1.Value)
End Sub

Private Sub Command1_Click()
    On Error Resume Next
    Dim idb As String
    Dim hwnd As Long
    
    Text1 = Empty
    
    ida.WriteFile App.path & "\lastScript.txt", txtJS.Text
    
    If Not ida.isUp Then
        hwnd = Form2.SelectIDAInstance(True, False)
        If hwnd <> 0 Then
            ida.ipc.RemoteHWND = hwnd
            idb = ida.LoadedFile
            List1.AddItem "IDA Server Up hwnd=" & ida.ipc.RemoteHWND & " (0x" & Hex(ida.ipc.RemoteHWND) & ")"
            List1.AddItem "IDB: " & idb
            lblIDB = "Current IDB: " & fso.FileNameFromPath(idb)
        Else
            Text1 = "IDA Server instances not found"
            lblIDB.Caption = "Current IDB: (null)"
            Exit Sub
        End If
    End If
    
    sc.Reset
    sc.AddObject "list", List1, True
    sc.AddObject "ida", ida, True
    sc.AddObject "app", ida, True
    sc.AddObject "fso", ida, True  'parlor trick to break up intellisense list into smaller segments..
    sc.AddObject "remote", remote, True
    
    Const wrappers = "function h(x){ return ida.intToHex(x);};" & _
                     "function t(x){ ida.t(x);};" & _
                     "function d(x){ list1.additem(x);};" & _
                     "function alert(x){ ida.alert(x);};" & _
                     "function myMain(){" & vbCrLf
    
    'mymain() wrapper added so you can use return as an early exit..
    sc.AddCode wrappers & txtJS.Text & "}myMain();"
    
End Sub

 

Private Sub Form_Load()
    
    On Error Resume Next
    
    Dim hwnd As Long
    Dim idb As String
    Dim windows As Long
    
    'quick way for IDASrvr to be able to find us for launching..
    SaveSetting "IPC", "HANDLES", "IDAJSCRIPT", App.path & "\IDA_JScript.exe"
    
    FormPos Me, True
    Me.Visible = True
    
    Set remote.ws = Winsock1
    txtJS.LoadCallTips App.path & "\api.txt"
    txtJS.DisplayCallTips = True
    txtJS.WordWrap = True
    txtJS.ShowIndentationGuide = True
    txtJS.Folding = False
    
    List1.AddItem "Listening on hwnd: " & Me.hwnd & " (0x" & Hex(Me.hwnd) & ")"
    
    If fso.FolderExists(App.path & "\scripts") Then
        Dim tmp() As String, ci As ComboItem
        Dim f
        tmp = fso.GetFolderFiles(App.path & "\scripts")
        For Each f In tmp
            Set ci = cboSaved.ComboItems.Add(, , fso.GetBaseName(CStr(f)))
            ci.Tag = f
        Next
        cboSaved.Text = Empty
    End If
    
    Dim c As String, a As Long, autoConnectHWND As Long, t As String
    
    c = Command
    
    a = InStr(c, "/hwnd=")
    If a > 0 Then
        t = Mid(c, a)
        c = Trim(Replace(c, t, Empty))
        t = Trim(Replace(t, "/hwnd=", Empty))
        autoConnectHWND = CLng(t)
        If IsWindow(autoConnectHWND) = 0 Then autoConnectHWND = 0
    End If
    
    If fso.FileExists(c) Then
        LoadedFile = c
        txtJS.LoadFile c
    'ElseIf fso.FileExists(App.path & "\lastScript.txt") Then
        'LoadedFile = App.path & "\lastScript.txt"
        'txtJS.LoadFile LoadedFile
    End If
    
    If autoConnectHWND <> 0 Then
        ida.ipc.RemoteHWND = autoConnectHWND
        idb = ida.LoadedFile
        List1.AddItem "IDA Server Up hwnd=" & ida.ipc.RemoteHWND & " (0x" & Hex(ida.ipc.RemoteHWND) & ")"
        List1.AddItem "IDB: " & idb
        lblIDB = "Current IDB: " & fso.FileNameFromPath(idb)
    Else
        windows = ida.ipc.FindActiveIDAWindows()
        If windows = 0 Then
            List1.AddItem "No open IDA Windows detected. Use Tools menu to connect latter."
        ElseIf windows = 1 Then
            ida.ipc.RemoteHWND = ida.ipc.Servers(1)
            idb = ida.LoadedFile
            List1.AddItem "IDA Server Up hwnd=" & ida.ipc.RemoteHWND & " (0x" & Hex(ida.ipc.RemoteHWND) & ")"
            List1.AddItem "IDB: " & idb
            lblIDB = "Current IDB: " & fso.FileNameFromPath(idb)
        Else
            hwnd = Form2.SelectIDAInstance()
            If hwnd <> 0 Then
                ida.ipc.RemoteHWND = hwnd
                idb = ida.LoadedFile
                List1.AddItem "IDA Server Up hwnd=" & ida.ipc.RemoteHWND & " (0x" & Hex(ida.ipc.RemoteHWND) & ")"
                List1.AddItem "IDB: " & idb
                lblIDB = "Current IDB: " & fso.FileNameFromPath(idb)
            End If
        End If
    End If
    
    List1.Move Text1.Left, Text1.Top, Text1.Width, Text1.Height
    x = " Built in classes: ida. fso. app. [hitting the dot will display intellisense and open paran codetip intellisense] \n\n global functions: \n\t alert(x), \n\t h(x) [int to hex], \n\t t(x) [append this textbox with x] \n\t d(x) [add x to debug pane list]"
    Text1 = Replace(Replace(x, "\n", vbCrLf), "\t", vbTab)
    
End Sub


Private Sub Form_Resize()
    On Error Resume Next
    txtJS.Width = Me.Width - txtJS.Left - 140
    txtJS.Height = Me.Height - txtJS.Top - Frame1.Height - 550
    Frame1.Width = Me.Width - Frame1.Left - 140
    Frame1.Top = txtJS.Top + txtJS.Height
    Text1.Width = Frame1.Width - Text1.Left - 140
    List1.Move Text1.Left, Text1.Top, Text1.Width, Text1.Height
    List1.Width = Text1.Width
    Command1.Left = Frame1.Width - Command1.Width - 300
    fraSaved.Left = Frame1.Width - Command1.Width - 600 - fraSaved.Width
End Sub

Private Sub Form_Unload(Cancel As Integer)
    On Error Resume Next
    FormPos Me, True, True
    If Len(txtJS.Text) > 2 And txtJS.isDirty Then
        If Len(LoadedFile) > 0 Then
            If InStr(LoadedFile, App.path & "\scripts") > 0 Then
                If MsgBox("A Saved script was modified, save changes?", vbYesNo) = vbYes Then
                    fso.WriteFile LoadedFile, txtJS.Text
                End If
            Else
                fso.WriteFile LoadedFile, txtJS.Text
            End If
        Else
            ida.WriteFile App.path & "\lastScript.txt", txtJS.Text
        End If
    End If
End Sub

Private Sub mnuFormatJS_Click()

    On Error Resume Next
    Dim js As String
    
    js = fso.ReadFile(App.path & "\beautify.js")
    
    sc2.Reset
    sc2.AddCode js
    sc2.AddObject "txtJS", txtJS, True
    sc2.AddCode "txtJS.text = js_beautify(txtJS.text, {indent_size: 1, indent_char: '\t'}).split('\n').join('\r\n');"

    DoEvents
    
End Sub

Private Sub mnuLoadLast_Click()
    On Error Resume Next
    txtJS.LoadFile App.path & "\lastscript.txt"
End Sub

Private Sub mnuOpenScript_Click()
    
    Dim fpath As String
    fpath = dlg.OpenDialog(AllFiles, , , Me.hwnd)
    If Len(fpath) = 0 Then Exit Sub
    
    LoadedFile = fpath
    txtJS.LoadFile fpath 'only way to set the readonly modified property to false..
    
End Sub

Private Sub mnuSave_Click()
    
    If Len(LoadedFile) > 0 Then
        txtJS.SaveFile LoadedFile
    Else
        mnuSaveAs_Click
    End If
    
End Sub

Private Sub mnuSaveAs_Click()
    
    Dim fpath As String
    Dim ext As String
    ext = ".idajs"
    
    fpath = dlg.SaveDialog(AllFiles)
    If Len(fpath) = 0 Then Exit Sub
    If VBA.Right(fpath, Len(ext)) <> ext Then fpath = fpath & ext
    
    fso.WriteFile fpath, txtJS.Text
    txtJS.LoadFile fpath
    
End Sub

Private Sub mnuScintOpts_Click()
    txtJS.ShowAbout
End Sub

Private Sub mnuSelectIDAInstance_Click()
    Dim hwnd As Long
    Dim idb As String
    
    On Error Resume Next
    hwnd = Form2.SelectIDAInstance()
    If hwnd = 0 Then Exit Sub
    
    ida.ipc.RemoteHWND = hwnd
    idb = ida.LoadedFile()
    lblIDB = "Current IDB: " & fso.FileNameFromPath(idb)
    
End Sub

Private Sub mnuSHellExt_Click()
    
    Dim homedir As String
    
    homedir = App.path & "\IDA_JScript.exe"
    If Not FileExists(homedir) Then Exit Sub
    cmd = "cmd /c ftype IDAJS.Document=""" & homedir & """ %1 && assoc .idajs=IDAJS.Document"
    
    On Error Resume Next
    Shell cmd, vbHide
    
    Dim wsh As Object 'WshShell
    Set wsh = CreateObject("WScript.Shell")
    If Not wsh Is Nothing Then
        wsh.RegWrite "HKCR\IDAJS.Document\DefaultIcon\", homedir & ",0"
    End If
    
    
End Sub



Function FileExists(path) As Boolean
  If Len(path) = 0 Then Exit Function
  If Dir(path, vbHidden Or vbNormal Or vbReadOnly Or vbSystem) <> "" Then FileExists = True _
  Else FileExists = False
End Function

Private Sub sc_Error()
    
    On Error Resume Next
    Dim tmp() As String
    Dim cCount As Long
    Dim adjustedLine As Long
    Dim curLine As Long
    
    'if showing debug log, switch back to textbox view for error message
    If Check1.Value Then Check1.Value = 0
    
    adjustedLine = sc.Error.Line - 1   '-1 is for the extra line we add silently for wrappers
    
    Text1 = "Error on line: " & adjustedLine & vbCrLf & sc.Error.Description
    txtJS.GotoLine sc.Error.Line
     
    tmp = Split(txtJS.Text, vbCrLf)
    For i = 0 To adjustedLine - 1
        If i = (adjustedLine - 1) Then
            txtJS.SelStart = cCount
            txtJS.SelLength = Len(tmp(i))
            Exit For
        Else
            cCount = cCount + Len(tmp(i)) + 2 'for the crlf
        End If
    Next
        
End Sub

Private Sub txtJS_AutoCompleteEvent(className As String)
    
    Dim prev As String
    prev = txtJS.PreviousWord() 'scintinilla is smart enough that if partial word shows up in list it will auto select it.
                                'so fso.rea [CTRL-H] will display list and auto jump to readfile
    
    If className = "fso" Or prev = "fso" Then
        
        txtJS.ShowAutoComplete "readfile writefile appendfile fileexists deletefile"
        
    ElseIf className = "ida" Or prev = "ida" Then
    
        'do i want to break these up into smaller chunks for intellisense?
        txtJS.ShowAutoComplete "imagebase() loadedfile() jump patchbyte originalbyte readbyte inttohex refresh() " & _
                               "numfuncs() functionstart functionend functionname getasm instsize xrefsto " & _
                               "xrefsfrom undefine getname jumprva screenea() funccount() find " & _
                               "hideea showea hideblock showblock removename setname makecode message " & _
                               "getcomment addcomment addcodexref adddataxref delcodexref deldataxref " & _
                               "funcindexfromva funcvabyname nextea prevea patchstring makestr makeunk " & _
                               "renamefunc decompile quickcall clearDecompilerCache(),isCode,isData"
                               
    ElseIf className = "list" Or prev = "list" Then
    
        txtJS.ShowAutoComplete "additem clear"
    
    ElseIf className = "app" Or prev = "app" Then
    
        txtJS.ShowAutoComplete "clearlog caption getclipboard setclipboard askvalue openfiledialog savefiledialog exec list benchmark enableIDADebugMessages"
       
    ElseIf className = "remote" Or prev = "remote" Then
    
        txtJS.ShowAutoComplete "scanprocess resolveexport ip response"
        
    End If
        
    'divide up into these classes for intellise sense cleanliness?
    'ui -> jump refresh() hideea showea hideblock showblock getcomment addcomment loadedfile
    'refs -> getrefsto getrefsfrom addcodexref adddataxref delcodexref deldataxref
    'func -> numfuncs() functionstart functionend functionname getname removename setname funcindexfromva funcvabyname
    'code -> imagebase undefine makecode getasm instsize patchbyte orginalbyte readbyte nextea
    
End Sub

Private Sub txtJS_FileLoaded(fpath As String)
    Me.Caption = "IDAJScript - http://sandsprite.com        File: " & fso.FileNameFromPath(fpath)
End Sub
