$search_github_mods_btn_Click = {
if($search_github_mods_txt.Text -ne $null){
$checked_indicies = $checkedListBox2.CheckedIndices
$search_criteria = $search_github_mods_txt.Text
$paks = (invoke-WebRequest 'https://github.com/ArcticEcho/DRG-Mods' -UseBasicParsing).links | where{$_.href -like '*_p.pak'}
$table = $paks | select @{N='Links';E={$_.href}},@{N='Mods';e={$_.href -creplace '(?s)^.*/', '' -replace '%\d\d', '' -replace '%\d' -replace '}','' }} | sort mods
$mods = $table | where{$_.mods -like "*$search_criteria*"} | select -ExpandProperty mods
$links = $links = $table.links
$checkedListBox2.Items.Clear()
$checkedListBox2.Items.AddRange($mods)
}
}

$search_lcl_mods_btn_Click = {
if($search_lcl_mods_txt.Text -ne $null){
$search_criteria = $search_lcl_mods_txt.Text
$checkedListBox1.items.clear()
$checkedListBox1.Items.AddRange((Get-ChildItem $path_name_txt.Text | where{$_.Name -notlike '*FSD-WindowsNoEditor*' -and $_.Name -like "*$search_criteria*"}))
}}

$DRG_Mod_Manager3_load = {
$install_location = Get-ChildItem HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | 
% { Get-ItemProperty $_.PsPath | where{$_.displayname -like '*deep rock galactic*'} } | Select -ExpandProperty installlocation
$fullpath = $install_location +'\FSD\Content\Paks'
$path_name_txt.Text = $fullpath
$checkedListBox1.items.clear()
$checkedListBox1.Items.AddRange((Get-ChildItem $path_name_txt.Text | where{$_.Name -notlike '*FSD-WindowsNoEditor*'}))
$paks = (invoke-WebRequest 'https://github.com/ArcticEcho/DRG-Mods' -UseBasicParsing).links | where{$_.href -like '*_p.pak'}
$table = $paks | select @{N='Links';E={$_.href}},@{N='Mods';e={$_.href -creplace '(?s)^.*/', '' -replace '%\d\d', '' -replace '%\d' -replace '}','' }} | sort mods
$mods = $table.mods
$checkedListBox2.Items.Clear()
$checkedListBox2.Items.AddRange($mods)
}

$delete_local_mods_btn_Click = {
$items = Get-ChildItem $path_name_txt.Text | sort name
$mods = $checkedListBox1.CheckedItems
foreach($mod in $mods){
	$path = $path_name_txt.Text+'\'+$mod
	Remove-Item $path -Force
		$richTextBox1.Text += Write-output "$mod was deleted `n" }
}

$clear2_btn_Click = {
for($i=0;$i-lt $checkedListBox2.Items.Count;$i++)
	{$checkedListBox2.SetItemChecked($i,$false)}
}

$select_all2_btn_Click = {
for($i=0;$i-lt $checkedListBox2.Items.Count;$i++)
	{$checkedListBox2.SetItemChecked($i,$true)}
}

$download_selected_mods_btn_Click = {
$paks = (invoke-WebRequest 'https://github.com/ArcticEcho/DRG-Mods' -UseBasicParsing).links | where{$_.href -like '*_p.pak'}
$table = $paks | select @{N='Links';E={$_.href}},@{N='Mods';e={$_.href -creplace '(?s)^.*/', '' -replace '%\d\d', '' -replace '%\d' -replace '}','' }} | sort mods
$mods = $table | where{$_.mods -like "*$search_criteria*"} | select -ExpandProperty mods
$links = $table.links
$chkd_items = $checkedListBox2.CheckedItems
$array1 = @()
foreach($item in $chkd_items){$array1 += $mods.indexof($item)}
foreach($item in $array1){
	$pathname = $path_name_txt.Text +'\' + $mods[$item]
	Start-BitsTransfer -Source $links[$item] -Destination $pathname
	$mod = $mods[$item]
	$richTextBox1.Text +="$mod was downloaded `n"}
}

$query_github_mods_Click = {
$paks = (invoke-WebRequest 'https://github.com/ArcticEcho/DRG-Mods' -UseBasicParsing).links | where{$_.href -like '*_p.pak'}
$table = $paks | select @{N='Links';E={$_.href}},@{N='Mods';e={$_.href -creplace '(?s)^.*/', '' -replace '%\d\d', '' -replace '%\d' -replace '}','' }} | sort mods
$mods = $table.mods
$checkedListBox2.Items.Clear()
$checkedListBox2.Items.AddRange($mods)
}

$clear_output_log_btn_Click = {
$richTextBox1.Clear()
}

$disable_paks_btn_Click = {
$items = Get-ChildItem $path_name_txt.Text | sort name
$mods = $checkedListBox1.CheckedItems
foreach($mod in $mods){
	$path = $path_name_txt.Text+'\'+$mod
	if($path -like '*_p.pak'){gci $path | Rename-Item -NewName {$_.Name -replace '_p.pak','.pak'}
		$richTextBox1.Text += Write-output "$mod was disabled `n" }}}

$clear_btn_Click = {
for($i=0;$i-lt $checkedListBox1.Items.Count;$i++)
	{$checkedListBox1.SetItemChecked($i,$false)}
}

$select_all_btn_Click = {
for($i=0;$i-lt $checkedListBox1.Items.Count;$i++)
	{$checkedListBox1.SetItemChecked($i,$true)}
}

$enable_selected_mods_btn_Click = {
$items = Get-ChildItem $path_name_txt.Text | sort name
$mods = $checkedListBox1.CheckedItems
foreach($mod in $mods){
	$path = $path_name_txt.Text+'\'+$mod
	if($path -notlike '*_p.pak'){gci $path | Rename-Item -NewName {$_.Name -replace '.pak','_p.pak'}
		$richTextBox1.Text += Write-output "$mod was enabled `n" }

}}

$show_paks_btn_Click = {
$checkedListBox1.items.clear()
$checkedListBox1.Items.AddRange((Get-ChildItem $path_name_txt.Text | where{$_.Name -notlike '*FSD-WindowsNoEditor*'}))
}

$button2_Click = {
$folderBrowserDialog1.ShowDialog()
$path = $folderBrowserDialog1.SelectedPath
$path_name_txt.Text = $path
}

. (Join-Path $PSScriptRoot 'DRG_Mod_Manager3.designer.ps1')

$DRG_Mod_Manager3.ShowDialog()