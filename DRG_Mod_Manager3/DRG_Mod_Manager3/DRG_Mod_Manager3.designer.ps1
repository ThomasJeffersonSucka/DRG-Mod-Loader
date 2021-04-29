[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DRG_Mod_Manager3 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.OpenFileDialog]$openFileDialog1 = $null
[System.Windows.Forms.FolderBrowserDialog]$folderBrowserDialog1 = $null
[System.Windows.Forms.RichTextBox]$path_name_txt = $null
[System.Windows.Forms.CheckedListBox]$checkedListBox1 = $null
[System.Windows.Forms.Button]$show_paks_btn = $null
[System.Windows.Forms.Button]$enable_selected_mods_btn = $null
[System.Windows.Forms.RichTextBox]$richTextBox1 = $null
[System.Windows.Forms.Label]$Output_log_lbl = $null
[System.Windows.Forms.Button]$select_all_btn = $null
[System.Windows.Forms.Button]$clear_btn = $null
[System.Windows.Forms.Button]$disable_paks_btn = $null
[System.Windows.Forms.Button]$clear_output_log_btn = $null
[System.Windows.Forms.Button]$query_github_mods = $null
[System.Windows.Forms.Button]$download_selected_mods_btn = $null
[System.Windows.Forms.Button]$clear2_btn = $null
[System.Windows.Forms.Button]$select_all2_btn = $null
[System.Windows.Forms.Button]$delete_local_mods_btn = $null
[System.Windows.Forms.CheckedListBox]$checkedListBox2 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Button]$search_lcl_mods_btn = $null
[System.Windows.Forms.TextBox]$search_lcl_mods_txt = $null
[System.Windows.Forms.Button]$search_github_mods_btn = $null
[System.Windows.Forms.TextBox]$search_github_mods_txt = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$path_name_txt = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$openFileDialog1 = (New-Object -TypeName System.Windows.Forms.OpenFileDialog)
$folderBrowserDialog1 = (New-Object -TypeName System.Windows.Forms.FolderBrowserDialog)
$checkedListBox1 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$show_paks_btn = (New-Object -TypeName System.Windows.Forms.Button)
$enable_selected_mods_btn = (New-Object -TypeName System.Windows.Forms.Button)
$richTextBox1 = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$Output_log_lbl = (New-Object -TypeName System.Windows.Forms.Label)
$select_all_btn = (New-Object -TypeName System.Windows.Forms.Button)
$clear_btn = (New-Object -TypeName System.Windows.Forms.Button)
$disable_paks_btn = (New-Object -TypeName System.Windows.Forms.Button)
$clear_output_log_btn = (New-Object -TypeName System.Windows.Forms.Button)
$query_github_mods = (New-Object -TypeName System.Windows.Forms.Button)
$download_selected_mods_btn = (New-Object -TypeName System.Windows.Forms.Button)
$clear2_btn = (New-Object -TypeName System.Windows.Forms.Button)
$select_all2_btn = (New-Object -TypeName System.Windows.Forms.Button)
$delete_local_mods_btn = (New-Object -TypeName System.Windows.Forms.Button)
$checkedListBox2 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$search_lcl_mods_txt = (New-Object -TypeName System.Windows.Forms.TextBox)
$search_lcl_mods_btn = (New-Object -TypeName System.Windows.Forms.Button)
$search_github_mods_btn = (New-Object -TypeName System.Windows.Forms.Button)
$search_github_mods_txt = (New-Object -TypeName System.Windows.Forms.TextBox)
$DRG_Mod_Manager3.SuspendLayout()
#
#button2
#
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]127,[System.Int32]23))
$button2.TabIndex = [System.Int32]0
$button2.Text = [System.String]'Specify .pak Location'
$button2.UseVisualStyleBackColor = $true
$button2.add_Click($button2_Click)
#
#path_name_txt
#
$path_name_txt.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$path_name_txt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]145,[System.Int32]12))
$path_name_txt.Name = [System.String]'path_name_txt'
$path_name_txt.ReadOnly = $true
$path_name_txt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]421,[System.Int32]23))
$path_name_txt.TabIndex = [System.Int32]1
$path_name_txt.Text = [System.String]''
#
#openFileDialog1
#
$openFileDialog1.FileName = [System.String]'openFileDialog1'
#
#checkedListBox1
#
$checkedListBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$checkedListBox1.ForeColor = [System.Drawing.SystemColors]::WindowText
$checkedListBox1.FormattingEnabled = $true
$checkedListBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]60))
$checkedListBox1.Name = [System.String]'checkedListBox1'
$checkedListBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]307,[System.Int32]304))
$checkedListBox1.TabIndex = [System.Int32]2
#
#show_paks_btn
#
$show_paks_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$show_paks_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]60))
$show_paks_btn.Name = [System.String]'show_paks_btn'
$show_paks_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]23))
$show_paks_btn.TabIndex = [System.Int32]3
$show_paks_btn.Text = [System.String]'Show Mods / Refresh List'
$show_paks_btn.UseVisualStyleBackColor = $true
$show_paks_btn.add_Click($show_paks_btn_Click)
#
#enable_selected_mods_btn
#
$enable_selected_mods_btn.BackColor = [System.Drawing.Color]::PaleGreen
$enable_selected_mods_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$enable_selected_mods_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]89))
$enable_selected_mods_btn.Name = [System.String]'enable_selected_mods_btn'
$enable_selected_mods_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]23))
$enable_selected_mods_btn.TabIndex = [System.Int32]4
$enable_selected_mods_btn.Text = [System.String]'Enable Selected Mods'
$enable_selected_mods_btn.UseVisualStyleBackColor = $false
$enable_selected_mods_btn.add_Click($enable_selected_mods_btn_Click)
#
#richTextBox1
#
$richTextBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$richTextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]431))
$richTextBox1.Name = [System.String]'richTextBox1'
$richTextBox1.ReadOnly = $true
$richTextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1089,[System.Int32]164))
$richTextBox1.TabIndex = [System.Int32]5
$richTextBox1.Text = [System.String]''
#
#Output_log_lbl
#
$Output_log_lbl.AutoSize = $true
$Output_log_lbl.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]415))
$Output_log_lbl.Name = [System.String]'Output_log_lbl'
$Output_log_lbl.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$Output_log_lbl.TabIndex = [System.Int32]6
$Output_log_lbl.Text = [System.String]'Output Log'
#
#select_all_btn
#
$select_all_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$select_all_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]370))
$select_all_btn.Name = [System.String]'select_all_btn'
$select_all_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$select_all_btn.TabIndex = [System.Int32]7
$select_all_btn.Text = [System.String]'Select All'
$select_all_btn.UseVisualStyleBackColor = $true
$select_all_btn.add_Click($select_all_btn_Click)
#
#clear_btn
#
$clear_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$clear_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]93,[System.Int32]370))
$clear_btn.Name = [System.String]'clear_btn'
$clear_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$clear_btn.TabIndex = [System.Int32]8
$clear_btn.Text = [System.String]'Clear'
$clear_btn.UseVisualStyleBackColor = $true
$clear_btn.add_Click($clear_btn_Click)
#
#disable_paks_btn
#
$disable_paks_btn.BackColor = [System.Drawing.Color]::SandyBrown
$disable_paks_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$disable_paks_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]118))
$disable_paks_btn.Name = [System.String]'disable_paks_btn'
$disable_paks_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]23))
$disable_paks_btn.TabIndex = [System.Int32]9
$disable_paks_btn.Text = [System.String]'Disable Selected Mods'
$disable_paks_btn.UseVisualStyleBackColor = $false
$disable_paks_btn.add_Click($disable_paks_btn_Click)
#
#clear_output_log_btn
#
$clear_output_log_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$clear_output_log_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]78,[System.Int32]405))
$clear_output_log_btn.Name = [System.String]'clear_output_log_btn'
$clear_output_log_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$clear_output_log_btn.TabIndex = [System.Int32]10
$clear_output_log_btn.Text = [System.String]'Clear Log'
$clear_output_log_btn.UseVisualStyleBackColor = $true
$clear_output_log_btn.add_Click($clear_output_log_btn_Click)
#
#query_github_mods
#
$query_github_mods.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$query_github_mods.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]541,[System.Int32]60))
$query_github_mods.Name = [System.String]'query_github_mods'
$query_github_mods.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]23))
$query_github_mods.TabIndex = [System.Int32]14
$query_github_mods.Text = [System.String]'Query All GitHub Mods'
$query_github_mods.UseVisualStyleBackColor = $true
$query_github_mods.add_Click($query_github_mods_Click)
#
#download_selected_mods_btn
#
$download_selected_mods_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$download_selected_mods_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]541,[System.Int32]89))
$download_selected_mods_btn.Name = [System.String]'download_selected_mods_btn'
$download_selected_mods_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]23))
$download_selected_mods_btn.TabIndex = [System.Int32]15
$download_selected_mods_btn.Text = [System.String]'Download Selected Mods'
$download_selected_mods_btn.UseVisualStyleBackColor = $true
$download_selected_mods_btn.add_Click($download_selected_mods_btn_Click)
#
#clear2_btn
#
$clear2_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$clear2_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]770,[System.Int32]370))
$clear2_btn.Name = [System.String]'clear2_btn'
$clear2_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$clear2_btn.TabIndex = [System.Int32]17
$clear2_btn.Text = [System.String]'Clear'
$clear2_btn.UseVisualStyleBackColor = $true
$clear2_btn.add_Click($clear2_btn_Click)
#
#select_all2_btn
#
$select_all2_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$select_all2_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]689,[System.Int32]370))
$select_all2_btn.Name = [System.String]'select_all2_btn'
$select_all2_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$select_all2_btn.TabIndex = [System.Int32]16
$select_all2_btn.Text = [System.String]'Select All'
$select_all2_btn.UseVisualStyleBackColor = $true
$select_all2_btn.add_Click($select_all2_btn_Click)
#
#delete_local_mods_btn
#
$delete_local_mods_btn.BackColor = [System.Drawing.Color]::LightCoral
$delete_local_mods_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$delete_local_mods_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]147))
$delete_local_mods_btn.Name = [System.String]'delete_local_mods_btn'
$delete_local_mods_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]23))
$delete_local_mods_btn.TabIndex = [System.Int32]18
$delete_local_mods_btn.Text = [System.String]'Delete Selected Mods'
$delete_local_mods_btn.UseVisualStyleBackColor = $false
$delete_local_mods_btn.add_Click($delete_local_mods_btn_Click)
#
#checkedListBox2
#
$checkedListBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$checkedListBox2.ForeColor = [System.Drawing.SystemColors]::WindowText
$checkedListBox2.FormattingEnabled = $true
$checkedListBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]689,[System.Int32]60))
$checkedListBox2.Name = [System.String]'checkedListBox2'
$checkedListBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]307,[System.Int32]304))
$checkedListBox2.TabIndex = [System.Int32]19
#
#label2
#
$label2.AutoSize = $true
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]210))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]17))
$label2.TabIndex = [System.Int32]20
$label2.Text = [System.String]'Instructions'
#
#label3
#
$label3.AutoSize = $true
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]228))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]349,[System.Int32]17))
$label3.TabIndex = [System.Int32]21
$label3.Text = [System.String]'1. Pak location should auto-load, but can set manually
'
#
#label4
#
$label4.AutoSize = $true
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]246))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]276,[System.Int32]17))
$label4.TabIndex = [System.Int32]22
$label4.Text = [System.String]'2. Both local/github mods should auto load'
#
#label5
#
$label5.AutoSize = $true
$label5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]300))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]228,[System.Int32]17))
$label5.TabIndex = [System.Int32]23
$label5.Text = [System.String]'5. Refresh list (after every change)'
#
#label6
#
$label6.AutoSize = $true
$label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]282))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]274,[System.Int32]17))
$label6.TabIndex = [System.Int32]24
$label6.Text = [System.String]'4. Select the ones you want and download'
#
#label7
#
$label7.AutoSize = $true
$label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]264))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]17))
$label7.TabIndex = [System.Int32]25
$label7.Text = [System.String]'3. Use search function to filter mods
'
#
#label8
#
$label8.AutoSize = $true
$label8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]10.5,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]325,[System.Int32]318))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]239,[System.Int32]17))
$label8.TabIndex = [System.Int32]26
$label8.Text = [System.String]'6. Enable/disable/remove as needed'
#
#search_lcl_mods_txt
#
$search_lcl_mods_txt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]145,[System.Int32]38))
$search_lcl_mods_txt.Name = [System.String]'search_lcl_mods_txt'
$search_lcl_mods_txt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]20))
$search_lcl_mods_txt.TabIndex = [System.Int32]27
#
#search_lcl_mods_btn
#
$search_lcl_mods_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$search_lcl_mods_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]36))
$search_lcl_mods_btn.Name = [System.String]'search_lcl_mods_btn'
$search_lcl_mods_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]127,[System.Int32]23))
$search_lcl_mods_btn.TabIndex = [System.Int32]28
$search_lcl_mods_btn.Text = [System.String]'Search Local Mods'
$search_lcl_mods_btn.UseVisualStyleBackColor = $true
$search_lcl_mods_btn.add_Click($search_lcl_mods_btn_Click)
#
#search_github_mods_btn
#
$search_github_mods_btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$search_github_mods_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]689,[System.Int32]36))
$search_github_mods_btn.Name = [System.String]'search_github_mods_btn'
$search_github_mods_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]127,[System.Int32]23))
$search_github_mods_btn.TabIndex = [System.Int32]30
$search_github_mods_btn.Text = [System.String]'Search GitHub Mods'
$search_github_mods_btn.UseVisualStyleBackColor = $true
$search_github_mods_btn.add_Click($search_github_mods_btn_Click)
#
#search_github_mods_txt
#
$search_github_mods_txt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]822,[System.Int32]38))
$search_github_mods_txt.Name = [System.String]'search_github_mods_txt'
$search_github_mods_txt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]20))
$search_github_mods_txt.TabIndex = [System.Int32]29
#
#DRG_Mod_Manager3
#
$DRG_Mod_Manager3.BackColor = [System.Drawing.SystemColors]::Control
$DRG_Mod_Manager3.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1113,[System.Int32]607))
$DRG_Mod_Manager3.Controls.Add($search_github_mods_btn)
$DRG_Mod_Manager3.Controls.Add($search_github_mods_txt)
$DRG_Mod_Manager3.Controls.Add($search_lcl_mods_btn)
$DRG_Mod_Manager3.Controls.Add($search_lcl_mods_txt)
$DRG_Mod_Manager3.Controls.Add($label8)
$DRG_Mod_Manager3.Controls.Add($label7)
$DRG_Mod_Manager3.Controls.Add($label6)
$DRG_Mod_Manager3.Controls.Add($label5)
$DRG_Mod_Manager3.Controls.Add($label4)
$DRG_Mod_Manager3.Controls.Add($label3)
$DRG_Mod_Manager3.Controls.Add($label2)
$DRG_Mod_Manager3.Controls.Add($checkedListBox2)
$DRG_Mod_Manager3.Controls.Add($delete_local_mods_btn)
$DRG_Mod_Manager3.Controls.Add($clear2_btn)
$DRG_Mod_Manager3.Controls.Add($select_all2_btn)
$DRG_Mod_Manager3.Controls.Add($download_selected_mods_btn)
$DRG_Mod_Manager3.Controls.Add($query_github_mods)
$DRG_Mod_Manager3.Controls.Add($clear_output_log_btn)
$DRG_Mod_Manager3.Controls.Add($disable_paks_btn)
$DRG_Mod_Manager3.Controls.Add($clear_btn)
$DRG_Mod_Manager3.Controls.Add($select_all_btn)
$DRG_Mod_Manager3.Controls.Add($Output_log_lbl)
$DRG_Mod_Manager3.Controls.Add($richTextBox1)
$DRG_Mod_Manager3.Controls.Add($enable_selected_mods_btn)
$DRG_Mod_Manager3.Controls.Add($show_paks_btn)
$DRG_Mod_Manager3.Controls.Add($checkedListBox1)
$DRG_Mod_Manager3.Controls.Add($path_name_txt)
$DRG_Mod_Manager3.Controls.Add($button2)
$DRG_Mod_Manager3.ForeColor = [System.Drawing.SystemColors]::WindowText
$DRG_Mod_Manager3.Name = [System.String]'DRG_Mod_Manager3'
$DRG_Mod_Manager3.Text = [System.String]'DRG Mod Manager v1.1'
$DRG_Mod_Manager3.add_Load($DRG_Mod_Manager3_Load)
$DRG_Mod_Manager3.ResumeLayout($false)
$DRG_Mod_Manager3.PerformLayout()
Add-Member -InputObject $DRG_Mod_Manager3 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name openFileDialog1 -Value $openFileDialog1 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name folderBrowserDialog1 -Value $folderBrowserDialog1 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name path_name_txt -Value $path_name_txt -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name checkedListBox1 -Value $checkedListBox1 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name show_paks_btn -Value $show_paks_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name enable_selected_mods_btn -Value $enable_selected_mods_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name richTextBox1 -Value $richTextBox1 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name Output_log_lbl -Value $Output_log_lbl -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name select_all_btn -Value $select_all_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name clear_btn -Value $clear_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name disable_paks_btn -Value $disable_paks_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name clear_output_log_btn -Value $clear_output_log_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name query_github_mods -Value $query_github_mods -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name download_selected_mods_btn -Value $download_selected_mods_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name clear2_btn -Value $clear2_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name select_all2_btn -Value $select_all2_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name delete_local_mods_btn -Value $delete_local_mods_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name checkedListBox2 -Value $checkedListBox2 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name search_lcl_mods_btn -Value $search_lcl_mods_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name search_lcl_mods_txt -Value $search_lcl_mods_txt -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name search_github_mods_btn -Value $search_github_mods_btn -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name search_github_mods_txt -Value $search_github_mods_txt -MemberType NoteProperty
Add-Member -InputObject $DRG_Mod_Manager3 -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
