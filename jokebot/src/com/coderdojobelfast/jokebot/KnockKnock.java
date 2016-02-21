/*
 * Copyright (c) 2016 CoderDojo Belfast
 * 
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * 
 */
package com.coderdojobelfast.jokebot;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Let's write a class of our own!
 */
public class KnockKnock {

	private String setup;
	private String punchline;
	
	public KnockKnock(String setup, String punchline) {
		this.setup = setup;
		this.punchline = punchline;
	}
	
	public String getSetup() {
		return setup;
	}
	
	public String getPunchline() {
		return punchline;
	}
	
	public void tell() throws IOException {
		System.out.println("Knock knock!");
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String line = reader.readLine();
		if (line.equals("who's there?")) {
			System.out.println(getSetup());
			line = reader.readLine();
			System.out.println(getPunchline());
		}
	}
	
	public static void main(String[] args) throws IOException {
		KnockKnock joke = new KnockKnock("H", "Bless you!");
		joke.tell();
	    joke = new KnockKnock("Harry", "Harry up and let me in!");
		joke.tell();
	}
}
