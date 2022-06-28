package Service

import (
	"testing"
)

func TestGreeting(t *testing.T) {
	str := Greeting()
	if str != "Hello!" {
		t.Errorf("Not equal!")
	}
}
