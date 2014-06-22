package main

import "testing"

func TestSqrt(t *testing.T) {
	const in, out = 4, 2
        if in != out {
		t.Errorf("FAIL")
	}
}
