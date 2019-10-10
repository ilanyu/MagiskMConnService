.class public Lcn/kuaipan/android/kss/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/IKssUploadRequestResult;
.implements Lcn/kuaipan/android/kss/d;


# static fields
.field private static final W:Ljava/lang/String; = "UploadRequestResult"


# instance fields
.field private final X:[B

.field private final Y:Ljava/lang/String;

.field private Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

.field private aa:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "secure_key"

    .line 32
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/utils/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/f;->X:[B

    const-string v0, "file_meta"

    .line 33
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/f;->Y:Ljava/lang/String;

    const-string v0, "block_metas"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    iput-object v2, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "is_existed"

    .line 41
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v4, :cond_51

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    :goto_52
    if-eqz v4, :cond_57

    const-string v5, "commit_meta"

    goto :goto_59

    :cond_57
    const-string v5, "block_meta"

    .line 43
    :goto_59
    invoke-static {v3, v5}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v5, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    invoke-direct {v5, v3, v4}, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;-><init>(Ljava/lang/String;Z)V

    .line 45
    iget-object v3, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    add-int/lit8 v4, v2, 0x1

    aput-object v5, v3, v2

    move v2, v4

    goto :goto_2f

    :cond_6a
    const-string v0, "node_urls"

    .line 49
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_94

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/kuaipan/android/kss/f;->aa:[Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcn/kuaipan/android/kss/f;->aa:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v0, v2, v1

    move v1, v3

    goto :goto_80

    :cond_94
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/kuaipan/android/kss/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/kuaipan/android/utils/i;->c(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_2e
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    .line 66
    :try_start_c
    new-instance v0, Lcn/kuaipan/android/kss/f;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/kss/f;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_27
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_22
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    if-eqz p0, :cond_1c

    .line 72
    instance-of v1, p0, Lcn/kuaipan/android/utils/e;

    if-eqz v1, :cond_1c

    .line 73
    check-cast p0, Lcn/kuaipan/android/utils/e;

    invoke-interface {p0}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_1c
    return-object v0

    :catchall_1d
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_46

    :catch_22
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2f

    :catch_27
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_3b

    :catchall_2c
    move-exception p0

    goto :goto_46

    :catch_2e
    move-exception p0

    .line 70
    :goto_2f
    :try_start_2f
    new-instance v1, Lcn/kuaipan/android/a/e;

    const v2, 0x7a509

    const-string v3, "kss is not json"

    invoke-direct {v1, v2, v3, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3a
    move-exception p0

    .line 68
    :goto_3b
    new-instance v1, Lcn/kuaipan/android/a/e;

    const v2, 0x7a50c

    const-string v3, "kss is null"

    invoke-direct {v1, v2, v3, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    :goto_46
    if-eqz v0, :cond_51

    .line 72
    instance-of v1, v0, Lcn/kuaipan/android/utils/e;

    if-eqz v1, :cond_51

    .line 73
    check-cast v0, Lcn/kuaipan/android/utils/e;

    invoke-interface {v0}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_51
    throw p0
.end method


# virtual methods
.method public a(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .registers 3

    .line 98
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v0, v0

    if-lt p1, v0, :cond_a

    goto :goto_f

    .line 101
    :cond_a
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    aget-object p1, v0, p1

    return-object p1

    :cond_f
    :goto_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Z
    .registers 7

    .line 106
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 110
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_17

    aget-object v5, v0, v4

    .line 111
    iget-boolean v5, v5, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->b:Z

    if-nez v5, :cond_14

    return v3

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_17
    return v1
.end method

.method public b()[B
    .registers 2

    .line 79
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->X:[B

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 93
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v0, v0

    :goto_9
    return v0
.end method

.method public e()[Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcn/kuaipan/android/kss/f;->aa:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "secure_key"

    .line 123
    iget-object v2, p0, Lcn/kuaipan/android/kss/f;->X:[B

    invoke-static {v2}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_meta"

    .line 124
    iget-object v2, p0, Lcn/kuaipan/android/kss/f;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v1, p0, Lcn/kuaipan/android/kss/f;->aa:[Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 128
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcn/kuaipan/android/kss/f;->aa:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_2c

    .line 130
    :cond_27
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_2c
    const-string v2, "node_urls"

    .line 132
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 135
    iget-object v2, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-eqz v2, :cond_67

    .line 136
    iget-object v2, p0, Lcn/kuaipan/android/kss/f;->Z:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v3, :cond_67

    aget-object v5, v2, v4

    .line 137
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "is_existed"

    .line 138
    iget-boolean v8, v5, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->b:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    iget-boolean v7, v5, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->b:Z

    if-eqz v7, :cond_5a

    const-string v7, "commit_meta"

    .line 140
    iget-object v5, v5, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_61

    :cond_5a
    const-string v7, "block_meta"

    .line 142
    iget-object v5, v5, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :goto_61
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_67
    const-string v2, "block_metas"

    .line 147
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_75

    :catch_6d
    const-string v0, "UploadRequestResult"

    const-string v1, "Failed generate Json String for UploadRequestResult"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 152
    :goto_75
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
