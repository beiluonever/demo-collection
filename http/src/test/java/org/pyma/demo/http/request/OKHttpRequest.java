package org.pyma.demo.http.request;

import okhttp3.*;
import org.junit.Test;

import java.io.IOException;

/**
 * <p>
 * demo-collection
 * for index request test
 * </p>
 *
 * @author zhenpeng.wang@ingeek.com
 * @since 2019-11-20 10:20
 **/

public class OKHttpRequest {

    @Test
    public void testQueryParam() throws IOException {
        OkHttpClient client = new OkHttpClient();
        MediaType mediaType = MediaType.parse("multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW");
        Request request = new Request.Builder()
                .url("http://localhost:8080/index-param?param1=1111&param2=2222")
                .post( RequestBody.create(mediaType,""))
                .build();

        Response response = client.newCall(request).execute();

        assert response.isSuccessful();
        assert response.body() != null;
        String body = response.body().string();
        System.out.println(body);
        assert body.endsWith("2222");

    }

}
