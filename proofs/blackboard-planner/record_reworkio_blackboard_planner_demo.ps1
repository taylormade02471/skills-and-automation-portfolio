Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

[System.Windows.Forms.Application]::EnableVisualStyles()

$bg = [System.Drawing.Color]::FromArgb(14, 22, 38)
$panel = [System.Drawing.Color]::FromArgb(24, 36, 58)
$panel2 = [System.Drawing.Color]::FromArgb(31, 46, 73)
$text = [System.Drawing.Color]::FromArgb(235, 241, 250)
$muted = [System.Drawing.Color]::FromArgb(157, 174, 199)
$green = [System.Drawing.Color]::FromArgb(54, 211, 153)
$blue = [System.Drawing.Color]::FromArgb(92, 160, 255)
$amber = [System.Drawing.Color]::FromArgb(247, 190, 79)

function New-Label {
    param(
        [string]$Text,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height,
        [int]$Size = 10,
        [System.Drawing.Color]$Color = $text,
        [System.Drawing.FontStyle]$Style = [System.Drawing.FontStyle]::Regular
    )
    $label = New-Object System.Windows.Forms.Label
    $label.Text = $Text
    $label.Location = New-Object System.Drawing.Point($X, $Y)
    $label.Size = New-Object System.Drawing.Size($Width, $Height)
    $label.ForeColor = $Color
    $label.BackColor = [System.Drawing.Color]::Transparent
    $label.Font = New-Object System.Drawing.Font('Segoe UI', $Size, $Style)
    $label.AutoEllipsis = $false
    return $label
}

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Blackboard Planner Proof Demo'
$screenBounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
$form.ClientSize = New-Object System.Drawing.Size($screenBounds.Width, $screenBounds.Height)
$form.StartPosition = 'Manual'
$form.Location = New-Object System.Drawing.Point(0, 0)
$form.FormBorderStyle = 'None'
$form.MaximizeBox = $false
$form.MinimizeBox = $false
$form.TopMost = $true
$form.BackColor = $bg
$form.ForeColor = $text

$header = New-Object System.Windows.Forms.Panel
$header.Location = New-Object System.Drawing.Point(0, 0)
$header.Size = New-Object System.Drawing.Size($screenBounds.Width, 92)
$header.BackColor = $panel
$form.Controls.Add($header)
$header.Controls.Add((New-Label 'BLACKBOARD PLANNER' 28 18 540 34 23 $text ([System.Drawing.FontStyle]::Bold)))
$header.Controls.Add((New-Label 'Synthetic proof run for Rework.io | Week 7 | Monday through Sunday' 31 56 850 22 10 $muted))
$header.Controls.Add((New-Label 'DEMO DATA ONLY' 1140 28 190 30 11 $amber ([System.Drawing.FontStyle]::Bold)))

$left = New-Object System.Windows.Forms.Panel
$left.Location = New-Object System.Drawing.Point(24, 114)
$left.Size = New-Object System.Drawing.Size(310, 680)
$left.BackColor = $panel
$form.Controls.Add($left)
$left.Controls.Add((New-Label 'RUN STEPS' 22 18 250 28 12 $muted ([System.Drawing.FontStyle]::Bold)))
$left.Controls.Add((New-Label 'Guarded weekly workflow' 22 47 250 24 10 $muted))

$stepLabels = @()
$stepNames = @(
    '1  Lock school week',
    '2  Check connection',
    '3  Read current items',
    '4  Route by class',
    '5  Build searchable tags',
    '6  Prepare file packet',
    '7  Write audit handoff',
    '8  Stop at approval gate'
)
for ($i = 0; $i -lt $stepNames.Count; $i++) {
    $stepLabel = New-Label $stepNames[$i] 22 (92 + ($i * 58)) 264 38 11 $muted
    $stepLabel.Padding = New-Object System.Windows.Forms.Padding(12, 9, 4, 4)
    $stepLabel.BorderStyle = 'FixedSingle'
    $left.Controls.Add($stepLabel)
    $stepLabels += $stepLabel
}
$left.Controls.Add((New-Label 'No credentials | No submission | No external send' 22 608 270 42 9 $muted))

$main = New-Object System.Windows.Forms.Panel
$main.Location = New-Object System.Drawing.Point(358, 114)
$main.Size = New-Object System.Drawing.Size(983, 680)
$main.BackColor = $panel
$form.Controls.Add($main)
$main.Controls.Add((New-Label 'AUTOMATION RUN' 28 20 240 28 12 $muted ([System.Drawing.FontStyle]::Bold)))
$status = New-Label 'STARTING' 770 18 170 32 12 $amber ([System.Drawing.FontStyle]::Bold)
$status.TextAlign = 'MiddleRight'
$main.Controls.Add($status)
$stage = New-Label '' 28 65 900 40 21 $text ([System.Drawing.FontStyle]::Bold)
$main.Controls.Add($stage)
$detail = New-Label '' 28 112 900 44 11 $muted
$main.Controls.Add($detail)

$progress = New-Object System.Windows.Forms.ProgressBar
$progress.Location = New-Object System.Drawing.Point(28, 170)
$progress.Size = New-Object System.Drawing.Size(925, 15)
$progress.Minimum = 0
$progress.Maximum = $stepNames.Count
$progress.Style = 'Continuous'
$main.Controls.Add($progress)

$recordPanel = New-Object System.Windows.Forms.Panel
$recordPanel.Location = New-Object System.Drawing.Point(28, 218)
$recordPanel.Size = New-Object System.Drawing.Size(925, 180)
$recordPanel.BackColor = $panel2
$main.Controls.Add($recordPanel)
$recordPanel.Controls.Add((New-Label 'CLASS ROUTING AND PACKET STATUS' 20 15 500 25 11 $muted ([System.Drawing.FontStyle]::Bold)))
$recordPanel.Controls.Add((New-Label 'CRJ   |   demo-crj-course   |   CRJ_DEMO_PROJECT' 20 57 840 25 12 $text))
$recordPanel.Controls.Add((New-Label 'PSY   |   demo-psy-course   |   PSY_DEMO_PROJECT' 20 92 840 25 12 $text))
$recordPanel.Controls.Add((New-Label 'Separate folders, separate destinations, no cross posting' 20 137 840 25 10 $green))

$logPanel = New-Object System.Windows.Forms.Panel
$logPanel.Location = New-Object System.Drawing.Point(28, 420)
$logPanel.Size = New-Object System.Drawing.Size(925, 202)
$logPanel.BackColor = $panel2
$main.Controls.Add($logPanel)
$logPanel.Controls.Add((New-Label 'LIVE AUDIT LOG' 20 15 400 25 11 $muted ([System.Drawing.FontStyle]::Bold)))
$log = New-Label '' 20 49 875 132 10 $text
$log.Font = New-Object System.Drawing.Font('Consolas', 10, [System.Drawing.FontStyle]::Regular)
$logPanel.Controls.Add($log)

$footer = New-Label 'The demo stops before Blackboard submit, external send, authorship certification, or Rework upload.' 28 637 920 26 10 $amber
$main.Controls.Add($footer)

$steps = @(
    @{ Title = 'School week locked'; Detail = 'Week 7 scope set to Monday, October 26 through Sunday, November 1, 2026.'; Log = "[PASS] week_scope = monday_to_sunday`r`n[PASS] historical_items = excluded`r`n[INFO] timezone = America/Chicago" },
    @{ Title = 'Connection preflight passed'; Detail = 'Synthetic user controlled Blackboard page verified with no authentication or integrity prompt.'; Log = "[PASS] host = demo.blackboard.invalid`r`n[PASS] page = synthetic_course_outline`r`n[PASS] auth_prompt = false`r`n[PASS] integrity_prompt = false" },
    @{ Title = 'Current items extracted'; Detail = 'The run read two synthetic current week items and captured title, type, deadline, source, and status.'; Log = "[PASS] items_found = 2`r`n[PASS] required_fields = 9/9`r`n[PASS] source_status = synthetic_demo" },
    @{ Title = 'Class routes resolved'; Detail = 'CRJ and PSY moved into separate pipelines with separate destinations and output folders.'; Log = "[PASS] CRJ -> CRJ_DEMO_PROJECT`r`n[PASS] PSY -> PSY_DEMO_PROJECT`r`n[PASS] cross_class_send = false" },
    @{ Title = 'Searchable tags built'; Detail = 'Course, week, item type, deadline, source, draft, PDF, destination, and approval fields were indexed.'; Log = "[PASS] course_key = CRJ, PSY`r`n[PASS] week_number = 7`r`n[PASS] approval_status = review_required" },
    @{ Title = 'Downloader packet prepared'; Detail = 'Editable source paths were preserved and class specific PDF outputs were marked prepared.'; Log = "[PASS] editable_source = preserved`r`n[PASS] pdf_status = prepared_demo`r`n[PASS] output_folders = 2" },
    @{ Title = 'Audit handoff written'; Detail = 'The run produced a class separated audit record and a safe handoff for review.'; Log = "[PASS] audit_log = written`r`n[PASS] manifest = written`r`n[PASS] external_send = blocked" },
    @{ Title = 'Approval gate reached'; Detail = 'The planner stopped safely before any high consequence external action.'; Log = "[STOP] blackboard_submit = not_run`r`n[STOP] external_send = not_run`r`n[STOP] rework_upload = user_approval_required" }
)

$state = @{
    current = 0
    hold = 0
}
$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 1800
$timer.Add_Tick({
    if ($state.current -lt $steps.Count) {
        for ($j = 0; $j -lt $stepLabels.Count; $j++) {
            if ($j -lt $state.current) {
                $stepLabels[$j].BackColor = [System.Drawing.Color]::FromArgb(32, 83, 73)
                $stepLabels[$j].ForeColor = $green
            } elseif ($j -eq $state.current) {
                $stepLabels[$j].BackColor = [System.Drawing.Color]::FromArgb(43, 73, 117)
                $stepLabels[$j].ForeColor = $blue
            } else {
                $stepLabels[$j].BackColor = $panel2
                $stepLabels[$j].ForeColor = $muted
            }
        }
        $stage.Text = $steps[$state.current].Title
        $detail.Text = $steps[$state.current].Detail
        $log.Text = $steps[$state.current].Log
        $progress.Value = [Math]::Min($state.current + 1, $steps.Count)
        if ($state.current -eq ($steps.Count - 1)) {
            $status.Text = 'SAFE STOP'
            $status.ForeColor = $amber
            $footer.Text = 'COMPLETE DEMO: ready for user review, not submitted externally.'
            $state.hold = 0
        } else {
            $status.Text = 'RUNNING'
            $status.ForeColor = $blue
        }
        $state.current = $state.current + 1
    } else {
        $state.hold = $state.hold + 1
        if ($state.hold -ge 8) {
            $timer.Stop()
            $form.Close()
        }
    }
})

$form.Add_Shown({
    $timer.Start()
})

[System.Windows.Forms.Application]::Run($form)
