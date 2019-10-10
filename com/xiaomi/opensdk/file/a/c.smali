.class public final Lcom/xiaomi/opensdk/file/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/xiaomi/opensdk/file/a/c;


# instance fields
.field private b:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/a/c;->b:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;
    .registers 3

    .line 34
    sget-object v0, Lcom/xiaomi/opensdk/file/a/c;->a:Lcom/xiaomi/opensdk/file/a/c;

    if-nez v0, :cond_22

    .line 35
    const-class v0, Lcom/xiaomi/opensdk/file/a/c;

    monitor-enter v0

    .line 36
    :try_start_7
    sget-object v1, Lcom/xiaomi/opensdk/file/a/c;->a:Lcom/xiaomi/opensdk/file/a/c;

    if-nez v1, :cond_1d

    if-eqz p0, :cond_15

    .line 40
    new-instance v1, Lcom/xiaomi/opensdk/file/a/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/opensdk/file/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/opensdk/file/a/c;->a:Lcom/xiaomi/opensdk/file/a/c;

    goto :goto_1d

    .line 38
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1d
    :goto_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0

    .line 44
    :cond_22
    :goto_22
    sget-object p0, Lcom/xiaomi/opensdk/file/a/c;->a:Lcom/xiaomi/opensdk/file/a/c;

    return-object p0
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 147
    instance-of v0, p1, Lcn/kuaipan/android/a/e;

    if-eqz v0, :cond_50

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 150
    instance-of v1, v0, Lcn/kuaipan/android/a/g;

    if-nez v1, :cond_45

    .line 154
    move-object v0, p1

    check-cast v0, Lcn/kuaipan/android/a/e;

    invoke-virtual {v0}, Lcn/kuaipan/android/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 155
    instance-of v1, p1, Lcn/kuaipan/android/a/h;

    const-wide/32 v2, 0x493e0

    if-nez v1, :cond_3f

    .line 157
    instance-of v1, p1, Lcn/kuaipan/android/a/i;

    if-eqz v1, :cond_2f

    .line 158
    check-cast p1, Lcn/kuaipan/android/a/i;

    invoke-virtual {p1}, Lcn/kuaipan/android/a/i;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    const/4 v1, 0x5

    if-ne p1, v1, :cond_39

    .line 159
    new-instance p1, Lcom/xiaomi/opensdk/a/b;

    invoke-direct {p1, v0, v2, v3}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 161
    :cond_2f
    instance-of v1, p1, Lcn/kuaipan/android/a/l;

    if-eqz v1, :cond_39

    .line 162
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 164
    :cond_39
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_3f
    new-instance p1, Lcom/xiaomi/opensdk/a/b;

    invoke-direct {p1, v0, v2, v3}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 151
    :cond_45
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    new-instance v1, Lcom/xiaomi/opensdk/a/d;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 165
    :cond_50
    instance-of v0, p1, Lcn/kuaipan/android/a/f;

    if-nez v0, :cond_55

    return-void

    .line 166
    :cond_55
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    move-object v1, p1

    check-cast v1, Lcn/kuaipan/android/a/f;

    invoke-virtual {v1}, Lcn/kuaipan/android/a/f;->b()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/i;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/xiaomi/opensdk/file/a/i;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/a/i;-><init>()V

    const-string v1, "storage"

    .line 99
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "uploadId"

    .line 100
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/a/i;->a(Ljava/lang/String;)V

    const-string v1, "kss"

    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/a/i;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/xiaomi/opensdk/file/a/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/c;->b:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(Lcom/xiaomi/opensdk/file/a/h;)V
    :try_end_5
    .catch Lcn/kuaipan/android/a/e; {:try_start_0 .. :try_end_5} :catch_b
    .catch Lcn/kuaipan/android/a/f; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p1

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/lang/Exception;)V

    goto :goto_f

    :catch_b
    move-exception p1

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/lang/Exception;)V

    :goto_f
    return-void
.end method

.method public a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 75
    :try_start_a
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/a/c;->b:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;Z)V
    :try_end_14
    .catch Lcn/kuaipan/android/a/e; {:try_start_a .. :try_end_14} :catch_1a
    .catch Lcn/kuaipan/android/a/f; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1e

    :catch_15
    move-exception p1

    .line 79
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/lang/Exception;)V

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/lang/Exception;)V

    :goto_1e
    return-void

    .line 82
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot detect download sdk"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/xiaomi/opensdk/file/a/h;)Lcom/xiaomi/opensdk/file/a/g;
    .registers 10

    .line 87
    new-instance v7, Lcom/xiaomi/opensdk/file/a/g;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->i()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v7
.end method

.method public b(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/i;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/xiaomi/opensdk/file/a/i;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/a/i;-><init>()V

    const-string v1, "upload_id"

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "upload_id"

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_14
    const-string v1, "uploadId"

    .line 113
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "uploadId"

    .line 114
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_22
    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/a/i;->a(Ljava/lang/String;)V

    const-string v1, "kss"

    .line 120
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/a/i;->b(Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_33
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Missing necessary field : upload_id / uploadId"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/xiaomi/opensdk/file/a/h;)Lcom/xiaomi/opensdk/file/a/a;
    .registers 10

    .line 125
    new-instance v7, Lcom/xiaomi/opensdk/file/a/a;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->j()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->c()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7
.end method

.method public c(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/xiaomi/opensdk/file/a/b;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/a/b;-><init>()V

    const-string v1, "storage"

    .line 132
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "kss"

    .line 133
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/a/b;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/xiaomi/opensdk/file/a/b;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/a/b;-><init>()V

    const-string v1, "kss"

    .line 142
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/a/b;->a(Ljava/lang/String;)V

    return-object v0
.end method
