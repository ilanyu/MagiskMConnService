.class public Lcn/kuaipan/android/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/HttpRequest;Z)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 165
    :cond_5
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    .line 166
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    invoke-static {p0}, Lcn/kuaipan/android/utils/d;->a([Lorg/apache/http/Header;)J

    move-result-wide p0

    add-long/2addr v2, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static a(Lorg/apache/http/HttpResponse;Z)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 201
    :cond_5
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    .line 202
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    invoke-static {p0}, Lcn/kuaipan/android/utils/d;->a([Lorg/apache/http/Header;)J

    move-result-wide p0

    add-long/2addr v2, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static a([Lorg/apache/http/Header;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1f

    .line 136
    array-length v2, p0

    if-gtz v2, :cond_8

    goto :goto_1f

    .line 140
    :cond_8
    array-length v2, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1e

    aget-object v4, p0, v3

    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1e
    return-wide v0

    :cond_1f
    :goto_1f
    return-wide v0
.end method

.method public static varargs a([Lorg/apache/http/HttpRequest;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 153
    :cond_5
    array-length v2, p0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_14

    aget-object v4, p0, v3

    const/4 v5, 0x1

    .line 154
    invoke-static {v4, v5}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpRequest;Z)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    return-wide v0
.end method

.method public static varargs a([Lorg/apache/http/HttpResponse;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 189
    :cond_5
    array-length v2, p0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_14

    aget-object v4, p0, v3

    const/4 v5, 0x1

    .line 190
    invoke-static {v4, v5}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpResponse;Z)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    return-wide v0
.end method

.method private static a(Lorg/apache/http/HttpEntity;I)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    const-wide/32 v3, 0x7fffffff

    goto :goto_f

    :cond_e
    move-wide v3, v0

    .line 73
    :goto_f
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    int-to-long v6, p1

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    if-ltz v2, :cond_23

    cmp-long v2, v0, v6

    if-gtz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_2a

    .line 78
    invoke-interface {p0, v5}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_4b

    .line 80
    :cond_2a
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    const/16 v4, 0x400

    .line 82
    :try_start_30
    new-array v4, v4, [B

    const/4 v6, 0x0

    .line 85
    :goto_33
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_47

    if-ge v6, p1, :cond_47

    sub-int v8, p1, v6

    .line 86
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 87
    invoke-virtual {v5, v4, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_7d

    add-int/2addr v6, v7

    goto :goto_33

    .line 92
    :cond_47
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    move v3, v6

    .line 96
    :goto_4b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_73

    if-ge v3, p1, :cond_5c

    goto :goto_73

    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\n [TOO MUCH DATA TO INCLUDE, SIZE="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_75

    :cond_73
    :goto_73
    const-string p0, ""

    :goto_75
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_7d
    move-exception p1

    .line 92
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static a(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 47
    :cond_32
    instance-of v1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_63

    .line 48
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 49
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_63

    const-string v1, "Content:\n"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :try_start_43
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_53

    const/16 v1, 0x400

    .line 54
    invoke-static {p0, v1}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpEntity;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5e

    :cond_53
    const-string p0, " [DATA CAN NOT REPEAT]"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_58} :catch_59

    goto :goto_5e

    :catch_59
    const-string p0, " [FAILED OUTPUT DATA]"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5e
    const-string p0, "\n"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_63
    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 117
    :cond_32
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_5d

    const-string v1, "Content:\n"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :try_start_3d
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v1, 0x400

    .line 122
    invoke-static {p0, v1}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpEntity;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_58

    :cond_4d
    const-string p0, " [DATA CAN NOT REPEAT]"

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_52} :catch_53

    goto :goto_58

    :catch_53
    const-string p0, " [FAILED OUTPUT DATA]"

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_58
    const-string p0, "\n"

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5d
    return-object v0
.end method
