.class public Lcn/kuaipan/kss/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuaipan/kss/KssUpload$UploadResult;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_meta"

    .line 63
    invoke-interface {p0}, Lcn/kuaipan/kss/KssUpload$UploadResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 66
    :goto_14
    invoke-interface {p0}, Lcn/kuaipan/kss/KssUpload$UploadResult;->c()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "commit_meta"

    .line 68
    invoke-interface {p0, v2}, Lcn/kuaipan/kss/KssUpload$UploadResult;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    const-string p0, "commit_metas"

    .line 71
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "SHA1"

    .line 20
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "MD5"

    .line 21
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 23
    sget v3, Lcn/kuaipan/kss/KssDef;->b:I

    new-array v3, v3, [B

    const/4 v4, 0x1

    :goto_16
    if-eqz v4, :cond_60

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 28
    :goto_1a
    sget v7, Lcn/kuaipan/kss/KssDef;->a:I

    if-ge v6, v7, :cond_35

    .line 29
    array-length v7, v3

    sget v8, Lcn/kuaipan/kss/KssDef;->a:I

    sub-int/2addr v8, v6

    .line 30
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 29
    invoke-virtual {p0, v3, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_34

    .line 32
    invoke-virtual {v1, v3, v5, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 33
    invoke-virtual {v2, v3, v5, v7}, Ljava/security/MessageDigest;->update([BII)V

    add-int/2addr v6, v7

    goto :goto_1a

    :cond_34
    const/4 v4, 0x0

    :cond_35
    if-nez v6, :cond_38

    goto :goto_60

    .line 46
    :cond_38
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sha1"

    .line 48
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcn/kuaipan/kss/c/a;->a([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "md5"

    .line 49
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcn/kuaipan/kss/c/a;->a([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "size"

    .line 50
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_16

    .line 55
    :cond_60
    :goto_60
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block_infos"

    .line 56
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 77
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "stat"

    .line 79
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "OK"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return-object v0

    :cond_15
    const-string p0, "proxies"

    .line 83
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 85
    :goto_22
    array-length v3, v1

    if-ge v2, v3, :cond_34

    .line 86
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_35

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_34
    return-object v1

    :catch_35
    return-object v0
.end method
