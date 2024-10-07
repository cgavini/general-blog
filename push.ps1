#Example usage: .\push.ps1 -Files .\src\SUMMARY.md,.\src\2024-3-3.md
param ([String[]]$Files)
git config --global user.email "gchinmoy@gmail.com"
Write-Output "Email for git commit is: "
git config --global --get user.email
foreach($fil in $Files)
{
	Write-Output "Adding file $fil"
	git add "$fil"
}
git commit -m "Update"
git push https://cgavini:$env:GH_PAT@github.com/cgavini/general-blog.git
git config --global user.email "chinmoy.gavini@intel.com"
Write-Output "Resetting email back to default. Reading back: "
git config --global --get user.email
