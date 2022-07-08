package Service

import (
	"testing"
)

func TestGreeting(t *testing.T) {
	str := Greeting()
	if str != "Hello, PGF!" {
		t.Errorf("Not equal!")
	}
}
