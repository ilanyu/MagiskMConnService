.class public Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:I = 0xf

.field private static final e:I = 0x2732

.field private static final f:I = 0x134

.field private static final g:Ljava/lang/String; = "pref_micloud_hosts_v2"

.field private static final h:Ljava/lang/String; = "pref_micloud_accountname_v2"

.field private static final i:Ljava/lang/String; = "retryAfter"

.field private static final j:Ljava/lang/String; = "redirectUrl"

.field private static final k:Ljava/lang/String; = "data"

.field private static final l:Ljava/lang/String; = "code"

.field private static final m:I = 0xa

.field private static final n:I = 0x2710

.field private static final o:[I

.field private static final p:Ljava/lang/String;

.field private static volatile q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/lang/Object;

.field private static s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

.field private static volatile t:Z

.field private static volatile u:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->o:[I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/relocation/v3/user/record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->p:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->q:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    return-void

    :array_2c
    .array-data 4
        0x3e8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/micloudsdk/c/d;)I
    .registers 4

    .line 142
    iget p0, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2c

    const/16 p0, 0x2710

    .line 144
    iget v0, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_15

    .line 145
    iget v0, p1, Lcom/xiaomi/micloudsdk/c/d;->l:I

    if-lez v0, :cond_15

    .line 146
    iget p0, p1, Lcom/xiaomi/micloudsdk/c/d;->l:I

    :cond_15
    const-string p1, "Micloud"

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http 5xx error. retryTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2c
    const-string p0, "Micloud"

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized server error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Z)I
    .registers 6

    if-eqz p0, :cond_a

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Ljava/util/Map;)V

    .line 171
    :cond_a
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_30

    .line 172
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Z)V

    .line 174
    :try_start_19
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c(Z)V
    :try_end_1c
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_19 .. :try_end_1c} :catch_27

    .line 179
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_30

    return v2

    :catch_27
    move-exception p0

    const-string v0, "Micloud"

    const-string v1, "CloudServerException in isInternationalAccount"

    .line 176
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .line 184
    :cond_30
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 188
    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_57

    goto :goto_3c

    .line 192
    :cond_57
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_64

    goto :goto_3c

    .line 197
    :cond_64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/4 p0, 0x0

    return p0

    :cond_6c
    return v1

    :cond_6d
    return v2
.end method

.method public static a(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 2

    .line 456
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.xiaomi"

    .line 457
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 458
    array-length v0, p0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    .line 459
    aget-object p0, p0, v0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 108
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 502
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 506
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const-string v0, "*/*"

    :goto_17
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/16 v0, 0x2732

    const/16 v1, 0x1f7

    const/16 v2, 0xf

    if-ge p1, v2, :cond_84

    .line 120
    :try_start_8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 121
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x134

    if-ne v2, v3, :cond_36

    const-string v0, "data"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isPermanent"

    .line 123
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    .line 125
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Z)V

    :cond_29
    const-string v0, "data"

    .line 127
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "redirectUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    const-string v2, "code"

    .line 128
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_59

    const-string v2, "code"

    .line 131
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_47

    goto :goto_82

    :cond_47
    const-string v2, "data"

    .line 132
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "retryAfter"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 133
    new-instance v2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v2, v1, v0, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(III)V

    throw v2

    :cond_59
    const-string v0, "data"

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "retryAfter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 130
    new-instance v0, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v0, v1, v1, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(III)V

    throw v0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception p1

    const-string v0, "Micloud"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException in checkRedirect():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_82
    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_84
    new-instance p0, Lcom/xiaomi/micloudsdk/c/d;

    const/16 p1, 0xa

    invoke-direct {p0, v1, v0, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(III)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 344
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c(Z)V

    .line 346
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Micloud"

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host with scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_27

    .line 349
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    :cond_27
    return-object p0
.end method

.method private static a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->q:Ljava/util/Map;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "Micloud"

    const/4 v1, 0x3

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "Micloud"

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getHost key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1f
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 380
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_31

    .line 381
    check-cast v0, Ljava/lang/String;

    goto :goto_32

    :cond_31
    move-object v0, v2

    .line 383
    :goto_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string p0, "Micloud"

    .line 384
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_56

    const-string p0, "Micloud"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hit host cache directly return host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-object v0

    .line 390
    :cond_57
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->f()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_71

    const-string p0, "Micloud"

    .line 392
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_70

    const-string p0, "Micloud"

    const-string v0, "Hosts in SystemSettings/sp = null, return null"

    .line 393
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-object v2

    .line 398
    :cond_71
    :try_start_71
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Ljava/util/Map;)V

    .line 400
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8e

    .line 401
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_8e

    .line 402
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_8e
    const-string p0, "Micloud"

    .line 404
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_ac

    const-string p0, "Micloud"

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find host in SystemSettings/sp return host = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_ac} :catch_ad

    :cond_ac
    return-object v0

    :catch_ad
    move-exception p0

    const-string v0, "Micloud"

    const-string v1, "JSONException in getHost, return null"

    .line 409
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 356
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c(Z)V

    const/4 p1, 0x0

    :try_start_4
    const-string v0, "Micloud"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lmiui/cloud/common/XLogger;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    const-string v2, "Micloud"

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lmiui/cloud/common/XLogger;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6b
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_6b} :catch_6d

    move-object p0, v0

    goto :goto_7a

    :catch_6d
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "MalformedURLException in updateHost %s"

    const/4 v3, 0x1

    .line 368
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, p1

    invoke-static {v1, v2, v3}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7a
    :goto_7a
    const-string v0, "Micloud"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lmiui/cloud/common/XLogger;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static b(Z)V
    .registers 1

    .line 104
    sput-boolean p0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->t:Z

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 112
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->f()Z

    move-result v0

    return v0
.end method

.method public static c()Landroid/accounts/Account;
    .registers 1

    .line 448
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .registers 3

    .line 432
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2c

    const-string v0, "Micloud"

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Micloud"

    const-string v1, "set hostlist to sp"

    .line 434
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_16
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_micloud_hosts_v2"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_48

    :cond_2c
    const-string v0, "Micloud"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "Micloud"

    const-string v1, "set hostlist to settings"

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_3b
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "micloud_hosts_v2"

    .line 442
    invoke-static {v0, v1, p0}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_48
    return-void
.end method

.method private static c(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->e()Z

    const-string v0, "Micloud"

    const/4 v1, 0x3

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "Micloud"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter updateMiCloudHosts, sNeedUpdateHosts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_26
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->g()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_49

    .line 215
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->c()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "Micloud"

    const-string v1, "change sNeedUpdateHosts to true"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Z)V

    .line 220
    :cond_49
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->e()Z

    move-result v0

    if-nez v0, :cond_51

    if-eqz p0, :cond_284

    :cond_51
    const/4 p0, 0x0

    .line 223
    :try_start_52
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    monitor-enter v0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_288

    :goto_55
    const/4 v1, 0x1

    .line 224
    :goto_56
    :try_start_56
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->a:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    if-ne v3, v4, :cond_a6

    const-string v1, "Micloud"

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for an existing updateMiCloudHosts to finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const-string v1, "Micloud"

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The existing updateMiCloudHosts finished "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->b:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    if-eq v1, v3, :cond_a4

    goto :goto_55

    :cond_a4
    const/4 v1, 0x0

    goto :goto_56

    :cond_a6
    if-eqz v1, :cond_ac

    .line 234
    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->a:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sput-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 237
    :cond_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_56 .. :try_end_ad} :catchall_285

    if-eqz v1, :cond_284

    :try_start_af
    const-string v0, "Micloud"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMiCloudHosts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_d2
    .catchall {:try_start_af .. :try_end_d2} :catchall_272

    const/4 v1, 0x0

    :try_start_d3
    const-string v2, "miui.os.Build"

    .line 245
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRegion"

    .line 246
    new-array v4, p0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 247
    new-array v3, p0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    .line 248
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Ljava/lang/String;)V

    const-string v3, "romCountry"

    .line 249
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f3} :catch_f4
    .catchall {:try_start_d3 .. :try_end_f3} :catchall_272

    goto :goto_105

    :catch_f4
    move-exception v2

    :try_start_f5
    const-string v3, "Micloud"

    const-string v4, "Exception in updateMiCloudHosts()"

    .line 251
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "romCountry"

    .line 252
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_105
    const-string v2, "romCountry"

    .line 254
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12a

    const-string v2, "Micloud"

    const-string v3, "request romCountry null, thirdparty app"

    .line 255
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "micloud_updatehosts_third_party"

    const-string v4, "true"

    .line 256
    invoke-static {v2, v3, v4}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_140

    :cond_12a
    const-string v2, "Micloud"

    const-string v3, "request romCountry not null, system app"

    .line 259
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "micloud_updatehosts_third_party"

    const-string v4, "false"

    .line 260
    invoke-static {v2, v3, v4}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_140
    const/4 v2, 0x0

    .line 269
    :goto_141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3
    :try_end_149
    .catchall {:try_start_f5 .. :try_end_149} :catchall_272

    if-nez v3, :cond_26c

    .line 273
    :try_start_14b
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->c()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_157
    .catch Lorg/json/JSONException; {:try_start_14b .. :try_end_157} :catch_25e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14b .. :try_end_157} :catch_250
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14b .. :try_end_157} :catch_242
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_14b .. :try_end_157} :catch_234
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_157} :catch_1d7
    .catchall {:try_start_14b .. :try_end_157} :catchall_272

    if-eqz v4, :cond_16a

    .line 329
    :try_start_159
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    monitor-enter v0
    :try_end_15c
    .catch Ljava/lang/InterruptedException; {:try_start_159 .. :try_end_15c} :catch_288

    .line 330
    :try_start_15c
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->b:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 331
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 332
    monitor-exit v0

    return-void

    :catchall_167
    move-exception v1

    monitor-exit v0
    :try_end_169
    .catchall {:try_start_15c .. :try_end_169} :catchall_167

    :try_start_169
    throw v1
    :try_end_16a
    .catch Ljava/lang/InterruptedException; {:try_start_169 .. :try_end_16a} :catch_288

    .line 278
    :cond_16a
    :try_start_16a
    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->p:Ljava/lang/String;

    .line 279
    invoke-static {v4, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    .line 281
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1d5

    const-string v4, "data"

    .line 282
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "hostList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1c3

    const-string v5, "Micloud"

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHostList set sNeedUpdateHosts to false "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c(Ljava/lang/String;)V

    .line 287
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Ljava/util/Map;)V

    .line 288
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Z)V

    .line 289
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c3

    .line 290
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->d(Ljava/lang/String;)V
    :try_end_1c3
    .catch Lorg/json/JSONException; {:try_start_16a .. :try_end_1c3} :catch_25e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16a .. :try_end_1c3} :catch_250
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16a .. :try_end_1c3} :catch_242
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_16a .. :try_end_1c3} :catch_234
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_1c3} :catch_1d7
    .catchall {:try_start_16a .. :try_end_1c3} :catchall_272

    .line 329
    :cond_1c3
    :try_start_1c3
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1c6
    .catch Ljava/lang/InterruptedException; {:try_start_1c3 .. :try_end_1c6} :catch_288

    .line 330
    :try_start_1c6
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->b:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 331
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 332
    monitor-exit v0

    goto/16 :goto_284

    :catchall_1d2
    move-exception v1

    monitor-exit v0
    :try_end_1d4
    .catchall {:try_start_1c6 .. :try_end_1d4} :catchall_1d2

    :try_start_1d4
    throw v1
    :try_end_1d5
    .catch Ljava/lang/InterruptedException; {:try_start_1d4 .. :try_end_1d5} :catch_288

    :cond_1d5
    move-object v3, v1

    goto :goto_1e9

    :catch_1d7
    move-exception v3

    :try_start_1d8
    const-string v4, "Micloud"

    const-string v5, "IOException in updateMiCloudHosts"

    .line 310
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/m;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_227

    .line 317
    :goto_1e9
    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->o:[I

    array-length v4, v4

    if-ge v2, v4, :cond_219

    const-string v3, "Micloud"

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->o:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ms for retry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->o:[I

    aget v3, v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_141

    :cond_219
    if-eqz v3, :cond_221

    .line 323
    new-instance v0, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v0, p0, v3}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 325
    :cond_221
    new-instance v0, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(I)V

    throw v0

    :cond_227
    const-string v0, "Micloud"

    const-string v1, "No network in IOException"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v0, p0, v3}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_234
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "ClientProtocolException in updateMiCloudHosts"

    .line 307
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    new-instance v1, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_242
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "BadPaddingException in updateMiCloudHosts"

    .line 304
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    new-instance v1, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_250
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "IllegalBlockSizeException in updateMiCloudHosts"

    .line 301
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    new-instance v1, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_25e
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "JSONException in updateMiCloudHosts"

    .line 298
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    new-instance v1, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 270
    :cond_26c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_272
    .catchall {:try_start_1d8 .. :try_end_272} :catchall_272

    :catchall_272
    move-exception v0

    .line 329
    :try_start_273
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    monitor-enter v1
    :try_end_276
    .catch Ljava/lang/InterruptedException; {:try_start_273 .. :try_end_276} :catch_288

    .line 330
    :try_start_276
    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->c:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sput-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->s:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 331
    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 332
    monitor-exit v1
    :try_end_280
    .catchall {:try_start_276 .. :try_end_280} :catchall_281

    :try_start_280
    throw v0
    :try_end_281
    .catch Ljava/lang/InterruptedException; {:try_start_280 .. :try_end_281} :catch_288

    :catchall_281
    move-exception v0

    :try_start_282
    monitor-exit v1
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_281

    :try_start_283
    throw v0
    :try_end_284
    .catch Ljava/lang/InterruptedException; {:try_start_283 .. :try_end_284} :catch_288

    :cond_284
    :goto_284
    return-void

    :catchall_285
    move-exception v1

    .line 237
    :try_start_286
    monitor-exit v0
    :try_end_287
    .catchall {:try_start_286 .. :try_end_287} :catchall_285

    :try_start_287
    throw v1
    :try_end_288
    .catch Ljava/lang/InterruptedException; {:try_start_287 .. :try_end_288} :catch_288

    :catch_288
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "InterruptedException in updateMiCloudHosts"

    .line 336
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    new-instance v1, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->q:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static d(Ljava/lang/String;)V
    .registers 4

    .line 466
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_40

    const-string v0, "Micloud"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Micloud"

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2a
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_micloud_accountname_v2"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_70

    :cond_40
    const-string v0, "Micloud"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "Micloud"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_63
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "micloud_accountname_v2"

    .line 477
    invoke-static {v0, v1, p0}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_70
    return-void
.end method

.method private static e()Z
    .registers 2

    .line 92
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->u:Ljava/lang/Object;

    if-nez v0, :cond_21

    .line 93
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_7
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->u:Ljava/lang/Object;

    if-nez v1, :cond_1c

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->u:Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->t:Z

    .line 98
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1

    .line 100
    :cond_21
    :goto_21
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->t:Z

    return v0
.end method

.method private static f()Ljava/lang/String;
    .registers 3

    .line 418
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_27

    const-string v0, "Micloud"

    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Micloud"

    const-string v1, "get hostlist from sp"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_16
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_micloud_hosts_v2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const-string v0, "Micloud"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "Micloud"

    const-string v1, "get hostlist from settings"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_36
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "micloud_hosts_v2"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .registers 3

    .line 483
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_27

    const-string v0, "Micloud"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Micloud"

    const-string v1, "get accountName from sp"

    .line 485
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_16
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_micloud_accountname_v2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const-string v0, "Micloud"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "Micloud"

    const-string v1, "get accountName from settings"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_36
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "micloud_accountname_v2"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Z
    .registers 3

    const-string v0, "true"

    .line 497
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "micloud_updatehosts_third_party"

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
