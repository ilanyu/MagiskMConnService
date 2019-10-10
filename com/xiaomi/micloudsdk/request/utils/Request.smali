.class public Lcom/xiaomi/micloudsdk/request/utils/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Request"

.field private static final b:Ljava/lang/String; = "signature"

.field private static final c:Ljava/lang/String; = "filterTag"

.field private static final d:I = 0x64

.field private static e:Landroid/content/Context;

.field private static f:Ljava/lang/String;

.field private static g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/d;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/request/utils/d;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 2

    .line 116
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->e:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 119
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->e:Landroid/content/Context;

    return-object v0

    .line 117
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sContext=null! Please call Request.init(Context) at Application onCreate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/b/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    sget-object p0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->a:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const/4 p1, 0x0

    invoke-static {p2, p0, p3, p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->a:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/xiaomi/micloudsdk/utils/f;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/utils/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    if-nez p2, :cond_7

    .line 362
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_7
    if-eqz p1, :cond_27

    const-string v0, "_nonce"

    .line 365
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "_nonce"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 369
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    :goto_30
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "_"

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    if-eqz p2, :cond_5b

    goto :goto_5d

    :cond_5b
    const-string p2, ""

    .line 377
    :goto_5d
    invoke-interface {p0, p2}, Lcom/xiaomi/micloudsdk/utils/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 378
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 380
    :cond_6a
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_73
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    .line 388
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceToken="

    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_17

    const-string p2, "; cUserId="

    .line 392
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    if-eqz p3, :cond_75

    .line 395
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_75

    .line 396
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 397
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "cUserId"

    .line 398
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "userId"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "serviceToken"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_27

    .line 401
    :cond_4c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 408
    :cond_75
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    const-string p2, "Cookie"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
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

    .line 205
    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 206
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_133
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_c} :catch_10e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_c} :catch_e9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_c} :catch_c4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_8f
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_3 .. :try_end_c} :catch_32
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestServer error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_32
    move-exception p0

    const-string p1, "Request"

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestServer error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 227
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result p1

    const/16 p2, 0x191

    if-eq p1, p2, :cond_89

    const/16 p2, 0x193

    if-eq p1, p2, :cond_89

    const/16 p2, 0x1f4

    if-eq p1, p2, :cond_7f

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_72

    .line 238
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 236
    :cond_72
    new-instance p1, Lcom/xiaomi/opensdk/a/b;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    int-to-long v0, p0

    invoke-direct {p1, p2, v0, v1}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 234
    :cond_7f
    new-instance p1, Lcom/xiaomi/opensdk/a/b;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0, v1}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 232
    :cond_89
    new-instance p0, Lcom/xiaomi/opensdk/a/a;

    invoke-direct {p0}, Lcom/xiaomi/opensdk/a/a;-><init>()V

    throw p0

    :catch_8f
    move-exception p0

    const-string p1, "Request"

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestServer error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p0}, Lcom/xiaomi/opensdk/a/b;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 223
    new-instance p1, Lcom/xiaomi/opensdk/a/b;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0, v1}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 225
    :cond_be
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_c4
    move-exception p0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestServer error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_e9
    move-exception p0

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestServer error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_10e
    move-exception p0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestServer error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_133
    move-exception p0

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestServer error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .line 112
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/Request;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 416
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 418
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p3, "signature"

    invoke-direct {p1, p3, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)V
    .registers 1

    .line 131
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 123
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/Request;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;J)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 434
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 435
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 438
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_40
    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 446
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v9, v9, p4

    if-gtz v9, :cond_55

    goto :goto_40

    :cond_55
    const/16 v9, 0x64

    if-ge v7, v9, :cond_74

    .line 455
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_64

    const-string v10, ","

    .line 456
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_64
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    .line 461
    rem-int/lit8 v8, v7, 0xa

    if-eqz v8, :cond_74

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v7, v8, :cond_74

    goto :goto_40

    .line 466
    :cond_74
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "filterTag"

    .line 468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_83

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_97

    :cond_83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 467
    :goto_97
    invoke-static {p0, p2, v11}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v10, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->a:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {v10, p0, v2, p2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 473
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "signature"

    invoke-direct {v11, v12, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {p0, v2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 478
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v8, 0x400

    if-lt v10, v8, :cond_c4

    goto :goto_d7

    .line 484
    :cond_c4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_cf

    const-string v8, ","

    .line 485
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_cf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lt v7, v9, :cond_40

    .line 496
    :cond_d7
    :goto_d7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Micloud"

    const/4 v2, 0x3

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_fa

    const-string v1, "Micloud"

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The filterTag is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    const-string v1, "filterTag"

    move-object v2, p1

    .line 501
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 423
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->d()Lcom/xiaomi/micloudsdk/b/a;

    move-result-object v0

    .line 424
    iget-object v3, v0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;J)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 127
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 341
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/d;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_e
    const-string v0, "Request"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relocation url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/b/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    sget-object p0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->b:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const/4 p1, 0x0

    invoke-static {p2, p0, p3, p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    .line 253
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    :goto_c
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_16a

    .line 256
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->d()Lcom/xiaomi/micloudsdk/b/a;

    move-result-object v4

    .line 257
    iget-object v6, v4, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/f;

    move-result-object v6

    if-eqz v2, :cond_21

    .line 258
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b()Ljava/lang/String;

    move-result-object v7
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_17a

    goto :goto_22

    :cond_21
    const/4 v7, 0x0

    .line 261
    :goto_22
    :try_start_22
    invoke-static {v6, v7, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Lcom/xiaomi/micloudsdk/utils/f;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v7
    :try_end_26
    .catch Lcom/xiaomi/micloudsdk/c/a; {:try_start_22 .. :try_end_26} :catch_141
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_17a

    .line 267
    :try_start_26
    iget-object v8, v4, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p1, p0, v7, v8}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 270
    sget-object v8, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 271
    invoke-interface {v8}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->c()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    invoke-interface {v9}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->d()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v4, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    .line 270
    invoke-static {v8, v9, v4, p3}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;

    move-result-object v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3d} :catch_17a

    .line 275
    :try_start_3d
    sget-object v8, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->a:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-virtual {v8, p1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 277
    invoke-static {p0, v7}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-static {v7, v4, v6}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/f;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16b

    .line 281
    :cond_4f
    sget-object v8, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->b:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-virtual {v8, p1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 283
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 285
    invoke-static {p0, v8, v4, v6}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/f;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16b

    .line 287
    :cond_64
    sget-object v8, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->c:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-virtual {v8, p1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 288
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_71
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_3d .. :try_end_71} :catch_b6
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_71} :catch_17a

    const/4 v9, 0x0

    .line 290
    :goto_72
    :try_start_72
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_92

    .line 291
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/NameValuePair;

    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/http/NameValuePair;

    invoke-interface {v11}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_8f} :catch_a3
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_72 .. :try_end_8f} :catch_b6
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8f} :catch_17a

    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    .line 296
    :cond_92
    :try_start_92
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {p0, v7, v4, v6}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/f;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16b

    :catch_a3
    move-exception v4

    .line 294
    new-instance v6, Lcom/xiaomi/micloudsdk/c/d;

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v0, v4}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/String;)V

    throw v6

    .line 301
    :cond_ae
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "http method not supported."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b6
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_92 .. :try_end_b6} :catch_b6
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_b6} :catch_17a

    :catch_b6
    move-exception v4

    :try_start_b7
    const-string v6, "Micloud"

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CloudServer Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 304
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v4}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_139

    if-nez v3, :cond_111

    const-string v5, "Micloud"

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CloudServer 401 Exception: retry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v5, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    invoke-interface {v5}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->b()V

    .line 311
    iget-wide v4, v4, Lcom/xiaomi/micloudsdk/c/d;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v4, v6

    .line 312
    invoke-static {v4, v5}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(J)V

    goto :goto_113

    :cond_111
    if-eq v3, v5, :cond_117

    :goto_113
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_117
    const-string p0, "Micloud"

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CloudServer 401 Exception: retry="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    throw v4

    .line 319
    :cond_139
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/xiaomi/micloudsdk/request/utils/f;->a(Landroid/content/Context;Lcom/xiaomi/micloudsdk/c/d;)V

    .line 320
    throw v4

    :catch_141
    move-exception p0

    const-string p1, "Micloud"

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CipherException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmiui/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance p1, Lcom/xiaomi/micloudsdk/c/d;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_16a
    move-object v4, v1

    .line 324
    :goto_16b
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/xiaomi/micloudsdk/request/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/xiaomi/micloudsdk/request/utils/b;->a(Landroid/content/Context;Z)V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_179} :catch_17a

    return-object v4

    :catch_17a
    move-exception p0

    .line 328
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/b;->a(Landroid/content/Context;Z)V

    .line 329
    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->b:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    .registers 1

    .line 135
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->c:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/xiaomi/micloudsdk/b/a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->g:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->a()Lcom/xiaomi/micloudsdk/b/a;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 354
    :cond_9
    new-instance v0, Lcom/xiaomi/micloudsdk/c/d;

    const/4 v1, 0x0

    const-string v2, "execute() : queryAuthToken == null"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method
