package utils

import (
	"fmt"
	"log"
	"math/rand"
	"os"
	"os/exec"

	"github.com/dropbox/godropbox/errors"
	"github.com/pacur/pacur/constants"
	"gopkg.in/src-d/go-git.v4"
	"gopkg.in/src-d/go-git.v4/plumbing"
	"gopkg.in/src-d/go-git.v4/plumbing/transport/http"
)

var (
	chars = []rune(
		"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
)

func HttpGet(url, output string) (err error) {
	cmd := exec.Command("wget", url, "-O", output)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	err = cmd.Run()
	if err != nil {
		err = &HttpError{
			errors.Wrapf(err, "utils: Failed to get '%s'", url),
		}
		return
	}

	return
}

func GitClone(url, branch string, user string, token string, output string) (err error) {
	if branch == "" {
		branch = "main"
	}

	fmt.Printf("Cloning Git repo to %s\n", output)

	var gitOpts git.CloneOptions

	if user == "" || token == "" {
		gitOpts = git.CloneOptions{
			URL:           url,
			ReferenceName: plumbing.ReferenceName(branch),
			Progress:      os.Stdout,
		}

	} else {
		gitOpts = git.CloneOptions{
			URL:           url,
			ReferenceName: plumbing.ReferenceName(branch),
			Auth: &http.BasicAuth{
				Username: user,
				Password: token,
			},
			Progress: os.Stdout,
		}
	}

	_, err = git.PlainClone(output, false, &gitOpts)

	if err != nil {
		log.Fatal("Git clone failed: ", err)
		return
	}

	return
}

func RandStr(n int) (str string) {
	strList := make([]rune, n)
	for i := range strList {
		strList[i] = chars[rand.Intn(len(chars))]
	}
	str = string(strList)
	return
}

func PullContainers() (err error) {
	for _, release := range constants.Releases {
		err = Exec("", "podman", "pull", constants.DockerOrg+release)
		if err != nil {
			return
		}
	}

	return
}
