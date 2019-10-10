.class public Lcn/kuaipan/kss/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssUpload;


# instance fields
.field private a:I

.field private b:Lorg/apache/http/client/HttpClient;

.field private c:Lcn/kuaipan/kss/b/b;

.field private d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

.field private e:Lcn/kuaipan/kss/b/i;

.field private f:Lcn/kuaipan/kss/b/j;

.field private g:[B

.field private h:Lcn/kuaipan/kss/c/c;

.field private i:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcn/kuaipan/kss/b/b;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    sget v0, Lcn/kuaipan/kss/KssDef;->b:I

    iput v0, p0, Lcn/kuaipan/kss/b/c;->a:I

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 329
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    .line 332
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    .line 335
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->e:Lcn/kuaipan/kss/b/i;

    .line 337
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    .line 340
    iget v0, p0, Lcn/kuaipan/kss/b/c;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->g:[B

    .line 341
    new-instance v0, Lcn/kuaipan/kss/c/c;

    invoke-direct {v0}, Lcn/kuaipan/kss/c/c;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->h:Lcn/kuaipan/kss/c/c;

    .line 342
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->i:Ljava/util/zip/CRC32;

    .line 40
    iput-object p1, p0, Lcn/kuaipan/kss/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 41
    iput-object p2, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    .line 42
    new-instance p1, Lcn/kuaipan/kss/b/i;

    invoke-direct {p1}, Lcn/kuaipan/kss/b/i;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/kss/b/c;->e:Lcn/kuaipan/kss/b/i;

    .line 43
    new-instance p1, Lcn/kuaipan/kss/b/j;

    invoke-direct {p1}, Lcn/kuaipan/kss/b/j;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    return-void
.end method

.method private a(Ljava/io/InputStream;[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    :goto_1
    iget v1, p0, Lcn/kuaipan/kss/b/c;->a:I

    if-ge v0, v1, :cond_10

    iget v1, p0, Lcn/kuaipan/kss/b/c;->a:I

    sub-int/2addr v1, v0

    .line 243
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_10

    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    return v0
.end method

.method private a(IIILcn/kuaipan/kss/b/h;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 188
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 189
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->i:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lcn/kuaipan/kss/b/c;->g:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 190
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    .line 192
    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p4}, Lcn/kuaipan/kss/b/c;->a(Ljava/lang/String;IILcn/kuaipan/kss/b/h;)Ljava/net/URI;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_6f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_6d

    move-object p2, v1

    move-object v0, p2

    .line 197
    :goto_21
    :try_start_21
    sget v3, Lcn/kuaipan/kss/KssDef;->d:I

    if-ge v2, v3, :cond_4b

    .line 198
    iget-object p2, p0, Lcn/kuaipan/kss/b/c;->g:[B

    invoke-direct {p0, p1, p2, p3}, Lcn/kuaipan/kss/b/c;->a(Ljava/net/URI;[BI)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_6a
    .catchall {:try_start_21 .. :try_end_2b} :catchall_67

    .line 200
    :try_start_2b
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_31
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2b .. :try_end_31} :catch_46
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_35
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    goto :goto_3b

    :catchall_32
    move-exception p1

    move-object v1, p2

    goto :goto_71

    :catch_35
    move-exception p1

    .line 208
    :try_start_36
    throw p1

    .line 204
    :catch_37
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    move-object v0, v1

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_42

    move-object v1, p2

    move-object p2, v0

    goto :goto_4c

    :cond_42
    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_21

    :catch_46
    move-exception p1

    .line 202
    throw p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_48} :catch_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_32

    :catch_48
    move-exception p1

    move-object v1, p2

    goto :goto_70

    :cond_4b
    move-object v1, v0

    :goto_4c
    if-nez p2, :cond_51

    .line 218
    :try_start_4e
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_63

    .line 220
    :cond_51
    invoke-direct {p0, p2, p4}, Lcn/kuaipan/kss/b/c;->a(Lorg/apache/http/HttpResponse;Lcn/kuaipan/kss/b/h;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p1

    .line 221
    sget-object p2, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne p1, p2, :cond_63

    .line 224
    iget-object p2, p0, Lcn/kuaipan/kss/b/c;->e:Lcn/kuaipan/kss/b/i;

    invoke-virtual {p2, p3}, Lcn/kuaipan/kss/b/i;->a(I)Z

    move-result p2

    if-nez p2, :cond_63

    .line 225
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->c:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_6f
    .catchall {:try_start_4e .. :try_end_63} :catchall_6d

    .line 232
    :cond_63
    :goto_63
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    return-object p1

    :catchall_67
    move-exception p1

    move-object v1, v0

    goto :goto_71

    :catch_6a
    move-exception p1

    move-object v1, v0

    goto :goto_70

    :catchall_6d
    move-exception p1

    goto :goto_71

    :catch_6f
    move-exception p1

    .line 230
    :goto_70
    :try_start_70
    throw p1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6d

    .line 232
    :goto_71
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    throw p1
.end method

.method private a(Ljava/io/InputStream;ILcn/kuaipan/kss/b/h;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 137
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->g:[B

    invoke-direct {p0, p1, v3}, Lcn/kuaipan/kss/b/c;->a(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_f

    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_13

    .line 139
    :catch_f
    sget-object v2, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-object v3, v2

    const/4 v2, 0x0

    :goto_13
    if-nez v2, :cond_16

    goto :goto_54

    .line 149
    :cond_16
    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->h:Lcn/kuaipan/kss/c/c;

    iget-object v4, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {v4}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->f()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/kuaipan/kss/c/c;->a([B)V

    .line 150
    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->h:Lcn/kuaipan/kss/c/c;

    iget-object v4, p0, Lcn/kuaipan/kss/b/c;->g:[B

    const/4 v5, 0x0

    iget-object v7, p0, Lcn/kuaipan/kss/b/c;->g:[B

    const/4 v8, 0x0

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcn/kuaipan/kss/c/c;->a([BII[BI)V

    const/4 v3, 0x0

    .line 154
    :cond_2e
    invoke-direct {p0, p2, v0, v2, p3}, Lcn/kuaipan/kss/b/c;->a(IIILcn/kuaipan/kss/b/h;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v4

    .line 157
    sget-object v5, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v5, v4, :cond_45

    .line 158
    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    invoke-virtual {v3}, Lcn/kuaipan/kss/b/b;->b()Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :cond_45
    :goto_45
    if-nez v3, :cond_2e

    .line 166
    sget-object v3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v3, v4, :cond_53

    add-int/2addr v0, v2

    .line 173
    sget v2, Lcn/kuaipan/kss/KssDef;->a:I

    if-lt v0, v2, :cond_51

    goto :goto_53

    :cond_51
    move-object v2, v4

    goto :goto_5

    :cond_53
    :goto_53
    move-object v3, v4

    :goto_54
    return-object v3
.end method

.method private a(Lorg/apache/http/HttpResponse;Lcn/kuaipan/kss/b/h;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 8

    .line 295
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 298
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 300
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_1a} :catch_3f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_37
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    .line 303
    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 304
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_30
    .catchall {:try_start_1a .. :try_end_23} :catchall_2d

    goto :goto_1a

    .line 314
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_4a

    :catch_28
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    :catchall_2d
    move-exception p1

    move-object v2, v3

    goto :goto_57

    :catch_30
    move-object v2, v3

    goto :goto_37

    :catch_32
    move-exception p1

    move-object v2, v3

    goto :goto_40

    :catchall_35
    move-exception p1

    goto :goto_57

    .line 310
    :catch_37
    :goto_37
    :try_start_37
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_35

    if-eqz v2, :cond_4a

    .line 314
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_28

    goto :goto_4a

    :catch_3f
    move-exception p1

    .line 307
    :goto_40
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 308
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_35

    if-eqz v2, :cond_4a

    .line 314
    :try_start_47
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_28

    .line 321
    :cond_4a
    :goto_4a
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v0, p1, :cond_56

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/kuaipan/kss/b/h;->a(Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v0

    :cond_56
    return-object v0

    :goto_57
    if-eqz v2, :cond_61

    .line 314
    :try_start_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p2

    .line 316
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    :cond_61
    :goto_61
    throw p1
.end method

.method private a(Ljava/lang/String;IILcn/kuaipan/kss/b/h;)Ljava/net/URI;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "chunk_pos"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "body_sum"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_40

    .line 258
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "file_meta"

    iget-object p4, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {p4}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->g()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "block_meta"

    iget-object p4, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    .line 260
    invoke-interface {p4, p3}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->c(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 263
    :cond_40
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "upload_id"

    invoke-virtual {p4}, Lcn/kuaipan/kss/b/h;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_4e
    iget-object p1, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {p1}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->e()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    const/4 p2, 0x0

    .line 267
    invoke-interface {p1, p2}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "upload_block_chunk"

    const-string p1, "UTF-8"

    .line 269
    invoke-static {v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 266
    invoke-static/range {v1 .. v6}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/net/URI;[BI)Lorg/apache/http/client/methods/HttpPost;
    .registers 7

    .line 276
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    if-nez v0, :cond_a

    .line 277
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    goto :goto_10

    .line 279
    :cond_a
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    invoke-virtual {v0, p1}, Lcn/kuaipan/kss/b/b;->b(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 284
    :goto_10
    array-length p1, p2

    if-ne p3, p1, :cond_19

    .line 285
    new-instance p1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    goto :goto_26

    .line 287
    :cond_19
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 288
    new-instance p2, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v1, p3

    invoke-direct {p2, p1, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    move-object p1, p2

    .line 290
    :goto_26
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method private b(Ljava/io/InputStream;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {v0}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->h()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_49

    .line 97
    iget-object v2, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {v2, v1}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 98
    sget v2, Lcn/kuaipan/kss/KssDef;->a:I

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 99
    iget-object v2, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {v3, v1}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/kuaipan/kss/b/j;->b(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcn/kuaipan/kss/b/c;->e:Lcn/kuaipan/kss/b/i;

    sget v3, Lcn/kuaipan/kss/KssDef;->a:I

    invoke-virtual {v2, v3}, Lcn/kuaipan/kss/b/i;->a(I)Z

    move-result v2

    if-nez v2, :cond_45

    .line 102
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->c:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object p1

    .line 110
    :cond_2f
    new-instance v2, Lcn/kuaipan/kss/b/h;

    invoke-direct {v2}, Lcn/kuaipan/kss/b/h;-><init>()V

    .line 113
    invoke-direct {p0, p1, v1, v2}, Lcn/kuaipan/kss/b/c;->a(Ljava/io/InputStream;ILcn/kuaipan/kss/b/h;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v3

    .line 115
    sget-object v4, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v3, v4, :cond_48

    .line 116
    iget-object v3, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    invoke-virtual {v2}, Lcn/kuaipan/kss/b/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuaipan/kss/b/j;->b(Ljava/lang/String;)V

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_48
    return-object v3

    .line 124
    :cond_49
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcn/kuaipan/kss/b/c;->b(Ljava/io/InputStream;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    invoke-direct {p0, v0}, Lcn/kuaipan/kss/b/c;->b(Ljava/io/InputStream;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcn/kuaipan/kss/KssUpload$UploadResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    return-object v0
.end method

.method public a(Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_4
    iput-object p1, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    .line 53
    iget-object p3, p0, Lcn/kuaipan/kss/b/c;->e:Lcn/kuaipan/kss/b/i;

    invoke-virtual {p3, p1, p2}, Lcn/kuaipan/kss/b/i;->a(Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;)V

    .line 54
    iget-object p1, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    iget-object p2, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    invoke-interface {p2}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/kuaipan/kss/b/j;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 78
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->d:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    .line 79
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->f:Lcn/kuaipan/kss/b/j;

    .line 80
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->e:Lcn/kuaipan/kss/b/i;

    .line 82
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->c:Lcn/kuaipan/kss/b/b;

    .line 83
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->i:Ljava/util/zip/CRC32;

    .line 84
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->h:Lcn/kuaipan/kss/c/c;

    .line 85
    iput-object v0, p0, Lcn/kuaipan/kss/b/c;->g:[B

    return-void
.end method
