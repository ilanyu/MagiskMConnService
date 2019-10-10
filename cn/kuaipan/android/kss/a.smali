.class public Lcn/kuaipan/android/kss/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
.implements Lcn/kuaipan/android/kss/d;


# static fields
.field private static final W:Ljava/lang/String; = "DownloadRequestResult"


# instance fields
.field private final X:Ljava/lang/String;

.field private Y:[B

.field private Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stat"

    .line 29
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/a;->X:Ljava/lang/String;

    const-string v0, "OK"

    .line 31
    iget-object v1, p0, Lcn/kuaipan/android/kss/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    const-string v0, "secure_key"

    .line 36
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/utils/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/a;->Y:[B

    const-string v0, "blocks"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_93

    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    iput-object v0, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "sha1"

    .line 44
    invoke-static {v2, v3}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "size"

    .line 45
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, "urls"

    .line 48
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_86

    .line 50
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 52
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    .line 53
    aput-object v8, v6, v7

    move v7, v9

    goto :goto_74

    .line 57
    :cond_86
    new-instance v2, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    invoke-direct {v2, v3, v6, v4, v5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;-><init>(Ljava/lang/String;[Ljava/lang/String;J)V

    .line 58
    iget-object v3, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_3a

    :cond_93
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    const-string v0, "OK"

    .line 84
    iget-object v1, p0, Lcn/kuaipan/android/kss/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public a(I)Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    .registers 3

    .line 119
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcn/kuaipan/android/kss/a;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/kuaipan/android/utils/i;->c(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_2e
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    .line 69
    :try_start_c
    new-instance v0, Lcn/kuaipan/android/kss/a;

    invoke-direct {v0, p1}, Lcn/kuaipan/android/kss/a;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_27
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_22
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    if-eqz p1, :cond_1c

    .line 76
    instance-of v1, p1, Lcn/kuaipan/android/utils/e;

    if-eqz v1, :cond_1c

    .line 77
    check-cast p1, Lcn/kuaipan/android/utils/e;

    invoke-interface {p1}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_1c
    return-object v0

    :catchall_1d
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_46

    :catch_22
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2f

    :catch_27
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_3b

    :catchall_2c
    move-exception p1

    goto :goto_46

    :catch_2e
    move-exception p1

    .line 74
    :goto_2f
    :try_start_2f
    new-instance v1, Lcn/kuaipan/android/a/e;

    const v2, 0x7a509

    const-string v3, "kss is not json"

    invoke-direct {v1, v2, v3, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3a
    move-exception p1

    .line 72
    :goto_3b
    new-instance v1, Lcn/kuaipan/android/a/e;

    const v2, 0x7a50c

    const-string v3, "kss is null"

    invoke-direct {v1, v2, v3, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    :goto_46
    if-eqz v0, :cond_51

    .line 76
    instance-of v1, v0, Lcn/kuaipan/android/utils/e;

    if-eqz v1, :cond_51

    .line 77
    check-cast v0, Lcn/kuaipan/android/utils/e;

    invoke-interface {v0}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_51
    throw p1
.end method

.method public a(J)[Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_2d

    .line 123
    iget-object v2, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-nez v2, :cond_c

    goto :goto_2d

    :cond_c
    const/4 v2, 0x0

    .line 129
    :goto_d
    iget-object v4, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v4, v4

    if-ge v2, v4, :cond_2c

    .line 130
    iget-object v4, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->c:J

    add-long/2addr v4, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_28

    cmp-long v0, p1, v4

    if-gez v0, :cond_28

    .line 133
    iget-object p1, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    aget-object p1, p1, v2

    iget-object v3, p1, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->b:[Ljava/lang/String;

    goto :goto_2c

    :cond_28
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v4

    goto :goto_d

    :cond_2c
    :goto_2c
    return-object v3

    :cond_2d
    :goto_2d
    return-object v3
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->X:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v1, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_f

    :cond_c
    iget-object v1, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v1, v1

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/a;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v3, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-eqz v3, :cond_39

    .line 102
    iget-object v3, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v4, v3

    :goto_2d
    if-ge v2, v4, :cond_39

    aget-object v5, v3, v2

    .line 103
    iget-object v5, v5, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 106
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcn/kuaipan/android/utils/b;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .registers 2

    .line 111
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->Y:[B

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_9

    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v0, v0

    :goto_9
    return v0
.end method

.method public f()J
    .registers 8

    .line 176
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 181
    :cond_7
    iget-object v0, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_15

    aget-object v5, v0, v4

    .line 182
    iget-wide v5, v5, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->c:J

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    return-wide v1
.end method

.method public g()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 145
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "stat"

    .line 146
    iget-object v2, p0, Lcn/kuaipan/android/kss/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secure_key"

    .line 147
    iget-object v2, p0, Lcn/kuaipan/android/kss/a;->Y:[B

    invoke-static {v2}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 150
    iget-object v2, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-eqz v2, :cond_5b

    .line 151
    iget-object v2, p0, Lcn/kuaipan/android/kss/a;->Z:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_5b

    aget-object v5, v2, v4

    .line 152
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sha1"

    .line 153
    iget-object v8, v5, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "size"

    .line 154
    iget-wide v8, v5, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->c:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 156
    iget-object v7, v5, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->b:[Ljava/lang/String;

    if-eqz v7, :cond_4b

    .line 157
    new-instance v7, Lorg/json/JSONArray;

    iget-object v5, v5, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->b:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_50

    .line 159
    :cond_4b
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    :goto_50
    const-string v5, "urls"

    .line 161
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_5b
    const-string v2, "blocks"

    .line 167
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    const-string v0, "DownloadRequestResult"

    const-string v1, "Failed generate Json String for UploadRequestResult"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 172
    :goto_69
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
