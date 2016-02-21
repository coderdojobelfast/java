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

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Now let's write our joke-telling robot.
 * 
 * It's not hard because we can re-use the stuff we've already written!
 */
public class JokeBot {
	
	public static void main(String[] args) throws IOException {
		List<KnockKnock> jokeBook = new ArrayList<>();
		jokeBook.add(new KnockKnock("H", "Bless you!"));
		jokeBook.add(new KnockKnock("Harry", "Harry up and let me in!"));
		jokeBook.add(new KnockKnock("Narnia", "Narnia business!"));
		jokeBook.add(new KnockKnock("Yodel ay ee", "I didn't know you could yodel!"));

		for(KnockKnock joke: jokeBook) {
			joke.tell();
		}
		System.out.println("That's all folks!!!");
	}
}
