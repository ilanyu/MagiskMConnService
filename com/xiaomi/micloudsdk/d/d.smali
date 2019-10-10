.class public abstract Lcom/xiaomi/micloudsdk/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/micloudsdk/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/micloudsdk/d/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MiCloudFileRequestor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    const-wide/32 v0, 0x493e0

    :try_start_3
    const-string v2, "Micloud"

    const/4 v3, 0x3

    .line 216
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "MiCloudFileRequestor"

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nparmas:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-eqz p3, :cond_31

    .line 219
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 220
    :cond_31
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    :goto_35
    const-string p2, "Micloud"

    .line 221
    invoke-static {p2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_53

    const-string p2, "MiCloudFileRequestor"

    .line 222
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultString:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_53} :catch_150
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_53} :catch_131
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_53} :catch_112
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_53} :catch_f3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_53} :catch_b7
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_3 .. :try_end_53} :catch_54

    :cond_53
    return-object p1

    :catch_54
    move-exception p1

    .line 244
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result p2

    const/16 p3, 0x191

    if-eq p2, p3, :cond_b1

    const/16 p3, 0x193

    if-eq p2, p3, :cond_b1

    const/16 p3, 0x1f4

    if-eq p2, p3, :cond_9a

    const/16 p3, 0x1f7

    if-eq p2, p3, :cond_80

    .line 253
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 251
    :cond_80
    new-instance p2, Lcom/xiaomi/opensdk/a/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->l:I

    int-to-long v0, p1

    invoke-direct {p2, p3, v0, v1}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p2

    .line 249
    :cond_9a
    new-instance p2, Lcom/xiaomi/opensdk/a/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0, v1}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p2

    .line 247
    :cond_b1
    new-instance p1, Lcom/xiaomi/opensdk/a/a;

    invoke-direct {p1}, Lcom/xiaomi/opensdk/a/a;-><init>()V

    throw p1

    :catch_b7
    move-exception p1

    const-string p2, "MiCloudFileRequestor"

    const-string p3, "requestServer error"

    .line 238
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-static {p1}, Lcom/xiaomi/opensdk/a/b;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_dc

    .line 240
    new-instance p2, Lcom/xiaomi/opensdk/a/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0, v1}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p2

    .line 242
    :cond_dc
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_f3
    move-exception p1

    const-string p2, "MiCloudFileRequestor"

    const-string p3, "requestServer error"

    .line 235
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_112
    move-exception p1

    const-string p2, "MiCloudFileRequestor"

    const-string p3, "requestServer error"

    .line 232
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_131
    move-exception p1

    const-string p2, "MiCloudFileRequestor"

    const-string p3, "requestServer error"

    .line 229
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_150
    move-exception p1

    const-string p2, "MiCloudFileRequestor"

    const-string p3, "requestServer error"

    .line 226
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/d/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 165
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/d/d;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_33

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_3b

    .line 172
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception p1

    .line 175
    :try_start_1c
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http 200 \u8fd4\u56de\u7684\u4e0d\u662fJSON\u683c\u5f0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_33
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string v0, "getRequestDownloadParams() can\'t return null."

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p1

    .line 178
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in getRequestDownloadParams():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_53
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string v0, "requestDownloadUrl is null or empty."

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/a;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/a/a;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->b(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/a;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 109
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->c(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/a;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_33

    const/4 p2, 0x1

    .line 113
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_3b

    .line 116
    :try_start_15
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception p1

    .line 119
    :try_start_1c
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http 200 \u8fd4\u56de\u7684\u4e0d\u662fJSON\u683c\u5f0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 111
    :cond_33
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "getCommitUploadParams() can\'t return null."

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p1

    .line 122
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in getCommitUploadParams():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 106
    :cond_53
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "commitUploadUrl is null or empty."

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/g;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/a/g;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->b(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/g;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 51
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->c(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/g;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_33

    const/4 p2, 0x1

    .line 55
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_3b

    .line 58
    :try_start_15
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception p1

    .line 61
    :try_start_1c
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http 200 \u8fd4\u56de\u7684\u4e0d\u662fJSON\u683c\u5f0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_33
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "getRequestUploadParams() can\'t return null."

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p1

    .line 64
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in getRequestUploadParams():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_53
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "requestUploadUrl is null or empty."

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/a/a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/g;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/a/g;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/a;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/a/a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/g;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/a/g;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation
.end method
