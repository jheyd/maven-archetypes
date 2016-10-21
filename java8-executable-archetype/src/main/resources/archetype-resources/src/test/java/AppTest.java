package de.janheyd;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

import org.junit.Test;

public class AppTest{

	@Test
    public void test(){
        assertThat(false, is(true));
    }
}
