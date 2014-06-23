package main

import (
	"fmt"
	"flag"
	"os"
)

func main() {
	uploadIt(parseArgs())
}

func parseArgs()(string, string, bool){

	//appId := flag.String("id", , "Print help page")
	//token := flag.String("token", false, "Print help page")
	notify := flag.Bool("notify", false, "Send notification email to Hockey app users")
	flag.Parse()

	//fmt.Println("notify:", *notify)

	args := flag.Args()
	if (len(args) < 2) {
		printHelp()
		os.Exit(0)
	}

	apkPath := args[0]
	message := args[1]
	return apkPath, message, *notify
}

func printHelp(){
	fmt.Printf(`

Usage: slapshot <RELEASE MESSAGE>

`)
}

func uploadIt(apkPath string, message string, notify bool){
	fmt.Printf("Uploading new release to Hockey...\n")

	//curl_request = "curl -SsF \"status=2\" -F \"notify=1\" -F \"notes=#{msg}\" -F \"notes_type=0\" -F \"ipa=@/Users/thomanil/versioncontrolled/shortcut/foxx-android/foxx/build/outputs/apk/foxx-debug.apk\" -H \"X-HockeyAppToken: cf03334d0eed45eaa05afdfb555995ce\" https://rink.hockeyapp.net/api/2/apps/ba1e678df2b11b9e5050b1abd63a9554/app_versions/upload"
	//response = `#{curl_request}`
	// TODO check response, handle errors/anything not 200/ok

	fmt.Printf("New release uploaded to Hockey!\n")
}
